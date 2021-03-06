# A small script to download the data required for the NiMARE tutorial.
#
# This script only needs to be run if the data are not already available, 
# such as if you are running the tutorial on your local machine.
#
# The data are located at https://osf.io/u9sqa/

DIR=$"data/"
if [ -d "$DIR" ]; then
    echo "$DIR exists."
else 
    mkdir -p $DIR;
    pip install osfclient
    osf -p u9sqa clone  $DIR;
    echo "Created $DIR and downloaded the data";
fi
