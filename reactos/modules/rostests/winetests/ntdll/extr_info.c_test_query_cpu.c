
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sci ;
typedef int ULONG ;
struct TYPE_3__ {int FeatureSet; } ;
typedef TYPE_1__ SYSTEM_CPU_INFORMATION ;
typedef scalar_t__ DWORD ;


 scalar_t__ STATUS_SUCCESS ;
 int SystemCpuInformation ;
 int ok (int,char*,int) ;
 scalar_t__ pNtQuerySystemInformation (int ,TYPE_1__*,int,int*) ;
 int trace (char*,int) ;

__attribute__((used)) static void test_query_cpu(void)
{
    DWORD status;
    ULONG ReturnLength;
    SYSTEM_CPU_INFORMATION sci;

    status = pNtQuerySystemInformation(SystemCpuInformation, &sci, sizeof(sci), &ReturnLength);
    ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    ok( sizeof(sci) == ReturnLength, "Inconsistent length %d\n", ReturnLength);


    trace("Processor FeatureSet : %08x\n", sci.FeatureSet);
    ok( sci.FeatureSet != 0, "Expected some features for this processor, got %08x\n", sci.FeatureSet);
}
