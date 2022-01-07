
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int srqi ;
typedef int ULONG ;
typedef int SYSTEM_REGISTRY_QUOTA_INFORMATION ;
typedef int NTSTATUS ;


 int STATUS_INFO_LENGTH_MISMATCH ;
 int STATUS_SUCCESS ;
 int SystemRegistryQuotaInformation ;
 int ok (int,char*,int) ;
 int pNtQuerySystemInformation (int ,int *,int,int*) ;

__attribute__((used)) static void test_query_regquota(void)
{
    NTSTATUS status;
    ULONG ReturnLength;
    SYSTEM_REGISTRY_QUOTA_INFORMATION srqi;

    status = pNtQuerySystemInformation(SystemRegistryQuotaInformation, &srqi, 0, &ReturnLength);
    ok( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);

    status = pNtQuerySystemInformation(SystemRegistryQuotaInformation, &srqi, sizeof(srqi), &ReturnLength);
    ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    ok( sizeof(srqi) == ReturnLength, "Inconsistent length %d\n", ReturnLength);

    status = pNtQuerySystemInformation(SystemRegistryQuotaInformation, &srqi, sizeof(srqi) + 2, &ReturnLength);
    ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    ok( sizeof(srqi) == ReturnLength, "Inconsistent length %d\n", ReturnLength);
}
