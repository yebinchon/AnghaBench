
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TEST_STATUS ;
typedef scalar_t__ HGLOBAL ;


 int FAILED ;
 scalar_t__ GlobalAlloc (int ,int ) ;
 scalar_t__ GlobalFree (scalar_t__) ;
 int MEM_BLOCK_SIZE ;
 int OUTPUT_Banner (char*) ;
 int OUTPUT_Line (char*) ;
 int OUTPUT_Result (int ) ;
 int OutputAllocFlags (int ) ;
 int PASSED ;
 int SKIPPED ;

TEST_STATUS TestGlobalAllocNFree(UINT allocFlags)
{
    TEST_STATUS status = SKIPPED;
    HGLOBAL hTest = 0;
    OUTPUT_Banner("Testing the GlobalAlloc and GlobalFree calls");
    OUTPUT_Line("Allocate a buffer");

    OutputAllocFlags(allocFlags);

    status = FAILED;
    hTest = GlobalAlloc(allocFlags, MEM_BLOCK_SIZE);
    if (0 != hTest)
    {
        if (0 == GlobalFree(hTest))
        {
            status = PASSED;
        }
    }

    OUTPUT_Line("Result for this run:");
    OUTPUT_Result(status);
    OUTPUT_Line("");

    return status;
}
