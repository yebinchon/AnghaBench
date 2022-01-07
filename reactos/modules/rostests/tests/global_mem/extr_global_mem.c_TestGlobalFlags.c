
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TEST_STATUS ;


 int OUTPUT_Banner (char*) ;
 int OUTPUT_Line (char*) ;
 int OUTPUT_Result (int ) ;
 int SKIPPED ;
 int TEST_CombineStatus (int ,int ) ;
 int TestGlobalFlagsFixed () ;
 int TestGlobalFlagsMoveable () ;

TEST_STATUS TestGlobalFlags()
{
    TEST_STATUS result = SKIPPED;
    OUTPUT_Banner("Testing GlobalFlags()");

    result = TEST_CombineStatus(result, TestGlobalFlagsFixed());
    result = TEST_CombineStatus(result, TestGlobalFlagsMoveable());

    OUTPUT_Line("GlobalFlags result:");
    OUTPUT_Result(result);
    return result;
}
