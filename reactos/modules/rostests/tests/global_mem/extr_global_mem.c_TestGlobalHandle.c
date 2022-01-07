
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEST_STATUS ;
typedef scalar_t__ PVOID ;
typedef scalar_t__ HGLOBAL ;


 int FAILED ;
 int GMEM_FIXED ;
 int GMEM_MOVEABLE ;
 scalar_t__ GlobalAlloc (int ,int ) ;
 int GlobalFree (scalar_t__) ;
 scalar_t__ GlobalHandle (scalar_t__) ;
 scalar_t__ GlobalLock (scalar_t__) ;
 int GlobalUnlock (scalar_t__) ;
 int MEM_BLOCK_SIZE ;
 int OUTPUT_Banner (char*) ;
 int OUTPUT_Handle (scalar_t__) ;
 int OUTPUT_Line (char*) ;
 int OUTPUT_Result (int ) ;
 int PASSED ;
 int SKIPPED ;
 int TEST_CombineStatus (int ,int ) ;

TEST_STATUS TestGlobalHandle()
{
    HGLOBAL hMem = 0;
    HGLOBAL hTest = 0;
    PVOID pMem = 0;
    TEST_STATUS subtest = SKIPPED;
    TEST_STATUS result = SKIPPED;

    OUTPUT_Banner("Testing GlobalHandle()");

    OUTPUT_Line("Testing GlobalHandle with a block of GMEM_FIXED memory");
    hMem = GlobalAlloc(GMEM_FIXED, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {

        OUTPUT_Line("Allocation handle: ");
        OUTPUT_Handle(hMem);

        hTest = GlobalHandle(hMem);
        if (hMem == hTest)
        {
            subtest = TEST_CombineStatus(subtest, PASSED);
        }
        else
        {
            OUTPUT_Line("GlobalHandle returned:");
            OUTPUT_Handle(hTest);
            subtest = TEST_CombineStatus(subtest, FAILED);
        }

        GlobalFree(hMem);
    }
    else
    {
        OUTPUT_Line("GlobalAlloc failed!");
        subtest = TEST_CombineStatus(subtest, FAILED);
    }

    OUTPUT_Line("Result from subtest:");
    OUTPUT_Result(subtest);
    result = TEST_CombineStatus(result, subtest);


    subtest = SKIPPED;
    OUTPUT_Line("Testing GlobalHandle with a block of GMEM_MOVEABLE memory");
    hMem = GlobalAlloc(GMEM_MOVEABLE, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {

        OUTPUT_Line("Allocation handle: ");
        OUTPUT_Handle(hMem);
        pMem = GlobalLock(hMem);
        hTest = GlobalHandle(pMem);
        if (hMem == hTest)
        {
            subtest = TEST_CombineStatus(subtest, PASSED);
        }
        else
        {
            OUTPUT_Line("GlobalHandle returned:");
            OUTPUT_Handle(hTest);
            subtest = TEST_CombineStatus(subtest, FAILED);
        }

        GlobalUnlock(hMem);
        GlobalFree(hMem);
    }
    else
    {
        OUTPUT_Line("GlobalAlloc failed!");
        subtest = TEST_CombineStatus(subtest, FAILED);
    }

    OUTPUT_Line("Result from subtest:");
    OUTPUT_Result(subtest);
    result = TEST_CombineStatus(result, subtest);


    OUTPUT_Line("Global Handle test results:");
    OUTPUT_Result(result);
    return result;
}
