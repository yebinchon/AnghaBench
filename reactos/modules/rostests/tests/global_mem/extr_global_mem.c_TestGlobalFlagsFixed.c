
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TEST_STATUS ;
typedef scalar_t__ HGLOBAL ;


 int FAILED ;
 int GMEM_FIXED ;
 int GMEM_LOCKCOUNT ;
 scalar_t__ GlobalAlloc (int ,int ) ;
 int GlobalFlags (scalar_t__) ;
 int GlobalFree (scalar_t__) ;
 scalar_t__ GlobalLock (scalar_t__) ;
 int MEM_BLOCK_SIZE ;
 int OUTPUT_Handle (scalar_t__) ;
 int OUTPUT_Line (char*) ;
 int OUTPUT_Result (int ) ;
 int PASSED ;
 int SKIPPED ;
 int TEST_CombineStatus (int ,int ) ;

TEST_STATUS TestGlobalFlagsFixed()
{
    HGLOBAL hMem = 0;
    UINT uFlags = 0;
    TEST_STATUS result = SKIPPED;

    OUTPUT_Line("Testing for correct handling of GMEM_FIXED memory");
    hMem = GlobalAlloc(GMEM_FIXED, MEM_BLOCK_SIZE);
    if (0 != hMem)
    {

        OUTPUT_Line("Allocation handle: ");
        OUTPUT_Handle(hMem);

        OUTPUT_Line("Testing initial allocation");
        OUTPUT_Line("Testing for non-discarded and lock of 0");
        uFlags = GlobalFlags(hMem);
        if (((GMEM_LOCKCOUNT & uFlags) == 0) &&
            (((uFlags >> 8) & 0xff) == 0 ))
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
        OUTPUT_Line("Testing for non-discarded and lock of 0");
        uFlags = GlobalFlags(hMem);
        if (((GMEM_LOCKCOUNT & uFlags) == 0) &&
            (((uFlags >> 8) & 0xff) == 0 ))
        {
            result = TEST_CombineStatus(result, PASSED);
        }
        else
        {
            result = TEST_CombineStatus(result, FAILED);
        }
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
