### benchmark for single pass rendering

CURRENT_DIR=$(pwd)
TEST_DIR=$CURRENT_DIR/..
TEST_LOG=$CURRENT_DIR/artistic_video.txt

cd $TEST_DIR
th artistic_video.lua | tee $TEST_LOG

### parse log
echo -e "\n\nsummary:" | tee -a $TEST_LOG
grep 'Running' $TEST_LOG | tee -a $TEST_LOG
cd $CURRENT_DIR
