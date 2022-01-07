
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEST_STATUS ;
typedef scalar_t__ HGLOBAL ;
typedef int DWORD ;


 int FAILED ;
 int GMEM_DISCARDED ;
 int GMEM_MOVEABLE ;
 scalar_t__ GlobalAlloc (int ,int ) ;
 scalar_t__ GlobalDiscard (scalar_t__) ;
 int GlobalFlags (scalar_t__) ;
 int GlobalFree (scalar_t__) ;
 int MEM_BLOCK_SIZE ;
 int OUTPUT_Banner (char*) ;
 int OUTPUT_Handle (scalar_t__) ;
 int OUTPUT_HexDword (int) ;
 int OUTPUT_Line (char*) ;
 int OUTPUT_Result (int ) ;
 int PASSED ;
 int SKIPPED ;
 int TEST_CombineStatus (int ,int ) ;

TEST_STATUS TestGlobalDiscard()
{
    HGLOBAL hMem = 0;
    HGLOBAL hTest = 0;
    DWORD uFlags = 0;
    TEST_STATUS subtest = SKIPPED;
    TEST_STATUS result = SKIPPED;

    OUTPUT_Banner("Testing GlobalDiscard()");
    hMem = GlobalAlloc(GMEM_MOVEABLE, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {
        OUTPUT_Line("Allocation handle: ");
        OUTPUT_Handle(hMem);

        hTest = GlobalDiscard(hMem);
        if (0 == hTest)
        {
            OUTPUT_Line("GlobalDiscard returned NULL");
            subtest = TEST_CombineStatus(subtest, FAILED);
        }
        else
        {
            uFlags = GlobalFlags(hTest);
            OUTPUT_Line("Flags from the new memory block.");
            OUTPUT_HexDword(uFlags);
            if (0 != (uFlags & GMEM_DISCARDED))
            {
                subtest = TEST_CombineStatus(subtest, PASSED);
            }
            else
            {
                OUTPUT_Line("Block is not marked as discardable.");
                subtest = TEST_CombineStatus(subtest, FAILED);
            }
        }

        GlobalFree(hTest);
    }
    else
    {
        OUTPUT_Line("GlobalAlloc failed!");
        subtest = TEST_CombineStatus(subtest, FAILED);
    }

    OUTPUT_Line("Result from subtest:");
    OUTPUT_Result(subtest);

    result = TEST_CombineStatus(result, subtest);

    OUTPUT_Result(result);
    return result;
}
