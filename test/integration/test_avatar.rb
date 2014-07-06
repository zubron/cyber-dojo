require_relative '../cyberdojo_test_base'
require_relative 'externals'
class AvatarTests < CyberDojoTestBase
    @dojo = Dojo.new(root_path,externals)
  #- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  test 'deleted file is deleted from that repo tag' do
    avatar = kata.start_avatar
    visible_files = avatar.tags[0].visible_files
    avatar.test(delta, visible_files)  # tag 1
    avatar.test(delta, visible_files)  # tag 2
    before = avatar.tags[1].visible_files
    after = avatar.tags[2].visible_files
  test 'diff is not empty when change in files' do
    avatar = kata.start_avatar
    visible_files = avatar.tags[0].visible_files
    avatar.test(delta, visible_files) # tag 1
    avatar.test(delta, visible_files) # tag 2
    traffic_lights = avatar.lights.each.entries
    actual = avatar.tags[1].diff(2)
  test 'diff shows added file' do
    avatar = kata.start_avatar
    visible_files = avatar.tags[0].visible_files

    avatar.test(delta, visible_files) # 1

    actual = avatar.tags[0].diff(1)
  test 'diff shows deleted file' do
    avatar = kata.start_avatar
    visible_files = avatar.tags[0].visible_files
    avatar.test(delta, visible_files)  # tag 1
    avatar.test(delta, visible_files)  # tag 2
    actual = avatar.tags[1].diff(2)
  test 'output is correct on refresh' do
    visible_files = avatar.tags[0].visible_files

    avatar.test(delta, visible_files)
    output = visible_files['output']

    assert_equal output, avatar.tags[1].output