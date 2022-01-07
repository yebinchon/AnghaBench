
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TEST_STATUS ;
typedef scalar_t__ HGLOBAL ;


 int FAILED ;
 int GMEM_DISCARDED ;
 int GMEM_LOCKCOUNT ;
 int GMEM_MOVEABLE ;
 scalar_t__ GlobalAlloc (int ,int ) ;
 int GlobalFlags (scalar_t__) ;
 int GlobalFree (scalar_t__) ;
 scalar_t__ GlobalLock (scalar_t__) ;
 int GlobalUnlock (scalar_t__) ;
 int MEM_BLOCK_SIZE ;
 int OUTPUT_Handle (scalar_t__) ;
 int OUTPUT_HexDword (int) ;
 int OUTPUT_Line (char*) ;
 int OUTPUT_Result (int ) ;
 int PASSED ;
 int SKIPPED ;
 int TEST_CombineStatus (int ,int ) ;

TEST_STATUS TestGlobalFlagsMoveable()
{
    HGLOBAL hMem = 0;
    UINT uFlags = 0;
    TEST_STATUS result = SKIPPED;

    OUTPUT_Line("Test for the proper lock count");

    hMem = GlobalAlloc(GMEM_MOVEABLE, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {

        OUTPUT_Line("Testing initial allocation");

        OUTPUT_Line("Testing for a lock of 0");
        uFlags = GlobalFlags(hMem);
        if (((GMEM_LOCKCOUNT & uFlags) == 0))
        {
            result = TEST_CombineStatus(result, PASSED);
        }
        else
        {
            result = TEST_CombineStatus(result, FAILED);
        }
        OUTPUT_Result(result);

        OUTPUT_Line("Pointer from handle: ");
        OUTPUT_Handle(GlobalLock(hMem));

        OUTPUT_Line("Testing after a lock");
        OUTPUT_Line("Testing for a lock of 1");
        uFlags = GlobalFlags(hMem);
        if (((GMEM_LOCKCOUNT & uFlags) == 1))
        {
            result = TEST_CombineStatus(result, PASSED);
        }
        else
        {
            result = TEST_CombineStatus(result, FAILED);
        }
        OUTPUT_Result(result);

        GlobalUnlock(hMem);
        OUTPUT_Line("Testing after an unlock");
        OUTPUT_Line("Testing for a lock of 0");
        uFlags = GlobalFlags(hMem);
        if (((GMEM_LOCKCOUNT & uFlags) == 0))
        {
            result = TEST_CombineStatus(result, PASSED);
        }
        else
        {
            result = TEST_CombineStatus(result, FAILED);
        }
        OUTPUT_Result(result);
    }
    else
    {
        OUTPUT_Line("GlobalAlloc failed!");
        result = TEST_CombineStatus(result, FAILED);
    }

    OUTPUT_Line("Test for discarded memory");
    OUTPUT_Line("Allocating an empty moveable block---automatically marked as discarded");
    hMem = GlobalAlloc(GMEM_MOVEABLE, 0);
    if (0 != hMem)
    {
        OUTPUT_Line("Allocation handle: ");
        OUTPUT_Handle(hMem);
        OUTPUT_Line("Testing for a discarded flag");
        uFlags = GlobalFlags(hMem);
        if (0 != (uFlags & GMEM_DISCARDED))
        {
            result = TEST_CombineStatus(result, PASSED);
        }
        else
        {
            result = TEST_CombineStatus(result, FAILED);
        }
        OUTPUT_Line("Flags:");
        OUTPUT_HexDword(uFlags);
        OUTPUT_Result(result);

        GlobalFree(hMem);
    }
    else
    {
        OUTPUT_Line("GlobalAlloc failed!");
        result = TEST_CombineStatus(result, FAILED);
    }
    return result;
}
