
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TEST_STATUS ;


 scalar_t__ FAILED ;
 int GHND ;
 int GMEM_FIXED ;
 int GMEM_MOVEABLE ;
 int GPTR ;
 int OUTPUT_Banner (char*) ;
 int OUTPUT_Line (char*) ;
 int OUTPUT_Result (scalar_t__) ;
 scalar_t__ SKIPPED ;
 scalar_t__ TEST_CombineStatus (scalar_t__,int ) ;
 int TestGlobalAllocNFree (int ) ;
 int TestGlobalDiscard () ;
 int TestGlobalFlags () ;
 int TestGlobalHandle () ;
 int TestGlobalLockNUnlock (int ) ;
 int TestGlobalReAlloc () ;
 int TestGlobalSize () ;

int main(int argc, char ** argv)
{
    TEST_STATUS test_set = SKIPPED;
    OUTPUT_Banner("Testing GlobalXXX memory management functions.");

    test_set = TEST_CombineStatus(test_set, TestGlobalAllocNFree(GPTR));
    test_set = TEST_CombineStatus(test_set, TestGlobalAllocNFree(GHND));
    test_set = TEST_CombineStatus(test_set, TestGlobalAllocNFree(GMEM_FIXED));
    test_set = TEST_CombineStatus(test_set, TestGlobalAllocNFree(GMEM_MOVEABLE));

    if (FAILED == test_set)
    {
        OUTPUT_Line("Skipping any further tests.  GlobalAlloc/Free fails.");
        OUTPUT_Result(test_set);
        return test_set;
    }

    test_set = TEST_CombineStatus(test_set, TestGlobalLockNUnlock(GPTR));
    test_set = TEST_CombineStatus(test_set, TestGlobalLockNUnlock(GHND));
    test_set = TEST_CombineStatus(test_set, TestGlobalLockNUnlock(GMEM_FIXED));
    test_set = TEST_CombineStatus(test_set, TestGlobalLockNUnlock(GMEM_MOVEABLE));

    test_set = TEST_CombineStatus(test_set, TestGlobalReAlloc());

    test_set = TEST_CombineStatus(test_set, TestGlobalFlags());

    test_set = TEST_CombineStatus(test_set, TestGlobalHandle());

    test_set = TEST_CombineStatus(test_set, TestGlobalSize());

    test_set = TEST_CombineStatus(test_set, TestGlobalDiscard());


    OUTPUT_Banner("Test suite result");
    OUTPUT_Result(test_set);
    return test_set;
}
