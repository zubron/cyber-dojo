
# Post-Paas-refactoring domain lib

me = File.expand_path(File.dirname(__FILE__))
CYBERDOJO_HOME_DIR = File.expand_path('..', me) + '/'

$LOAD_PATH << CYBERDOJO_HOME_DIR + 'lib'
$LOAD_PATH << CYBERDOJO_HOME_DIR + 'app/lib'
$LOAD_PATH << CYBERDOJO_HOME_DIR + 'app/models'

require 'OsDisk'
require 'OsDir'
require 'Git'
require 'Paas'
require 'DockerRunner'
require 'Dojo'
require 'DummyRunner'
require 'Languages'
require 'Language'
require 'Exercises'
require 'Exercise'
require 'Katas'
require 'Kata'
require 'Id'
require 'json'