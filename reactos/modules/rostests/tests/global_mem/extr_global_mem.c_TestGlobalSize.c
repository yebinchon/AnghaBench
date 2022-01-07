
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEST_STATUS ;
typedef scalar_t__ SIZE_T ;
typedef scalar_t__ HGLOBAL ;


 int FAILED ;
 int GMEM_FIXED ;
 int GMEM_MOVEABLE ;
 scalar_t__ GlobalAlloc (int ,scalar_t__) ;
 int GlobalFree (scalar_t__) ;
 scalar_t__ GlobalSize (scalar_t__) ;
 scalar_t__ MEM_BLOCK_SIZE ;
 int OUTPUT_Banner (char*) ;
 int OUTPUT_HexDword (scalar_t__) ;
 int OUTPUT_Line (char*) ;
 int OUTPUT_Result (int ) ;
 int PASSED ;
 int SKIPPED ;
 int TEST_CombineStatus (int ,int ) ;

TEST_STATUS TestGlobalSize()
{
    HGLOBAL hMem = 0;
    SIZE_T size = 0;
    TEST_STATUS subtest = SKIPPED;
    TEST_STATUS result = SKIPPED;
    OUTPUT_Banner("Testing GlobalSize()");

    OUTPUT_Line("Testing GlobalSize with a block of GMEM_FIXED memory");
    hMem = GlobalAlloc(GMEM_FIXED, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {
        size = GlobalSize(hMem);
        if (MEM_BLOCK_SIZE <= size)
        {
            subtest = TEST_CombineStatus(subtest, PASSED);
        }
        else
        {
            OUTPUT_Line("GlobalSize returned:");
            OUTPUT_HexDword(size);
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

    OUTPUT_Line("Testing GlobalSize with a block of GMEM_MOVEABLE memory");
    hMem = GlobalAlloc(GMEM_MOVEABLE, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {
        size = GlobalSize(hMem);
        if (MEM_BLOCK_SIZE <= size)
        {
            subtest = TEST_CombineStatus(subtest, PASSED);
        }
        else
        {
            OUTPUT_Line("GlobalSize returned:");
            OUTPUT_HexDword(size);
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

    OUTPUT_Line("Testing GlobalSize with discarded memory");
    hMem = GlobalAlloc(GMEM_MOVEABLE, 0);
    if (0 != hMem)
    {
        size = GlobalSize(hMem);
        if (0 == size)
        {
            subtest = TEST_CombineStatus(subtest, PASSED);
        }
        else
        {
            OUTPUT_Line("GlobalSize returned:");
            OUTPUT_HexDword(size);
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

    OUTPUT_Line("Test result:");
    OUTPUT_Result(result);
    return result;
}
