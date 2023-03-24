#
# Helpers to simplify running unit tests on python modules
#
#

function test_module() {
    path=$1
    shift
    rest=$*
    filename=$(basename -- "$path")
    dir=$(dirname -- $path)
    module="${filename%.*}"
    full_module="$(echo $dir | tr / .).${module}"

    echo invoke test-python --test-object=${full_module} $rest
    invoke test-python --test-object=${full_module} $rest
}

alias tmod="test_module"
