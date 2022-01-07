
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sbi ;
typedef int ULONG ;
struct TYPE_3__ {int NumberOfProcessors; } ;
typedef TYPE_1__ SYSTEM_BASIC_INFORMATION ;
typedef scalar_t__ NTSTATUS ;


 scalar_t__ STATUS_ACCESS_VIOLATION ;
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ;
 scalar_t__ STATUS_INVALID_INFO_CLASS ;
 scalar_t__ STATUS_INVALID_PARAMETER ;
 scalar_t__ STATUS_NOT_IMPLEMENTED ;
 scalar_t__ STATUS_SUCCESS ;
 int SystemBasicInformation ;
 int ok (int,char*,int) ;
 scalar_t__ pNtQuerySystemInformation (int,TYPE_1__*,int,int*) ;
 int trace (char*,...) ;

__attribute__((used)) static void test_query_basic(void)
{
    NTSTATUS status;
    ULONG ReturnLength;
    SYSTEM_BASIC_INFORMATION sbi;






    trace("Check nonexistent info class\n");
    status = pNtQuerySystemInformation(-1, ((void*)0), 0, ((void*)0));
    ok( status == STATUS_INVALID_INFO_CLASS || status == STATUS_NOT_IMPLEMENTED ,
        "Expected STATUS_INVALID_INFO_CLASS or STATUS_NOT_IMPLEMENTED, got %08x\n", status);


    trace("Check zero-length buffer\n");
    status = pNtQuerySystemInformation(SystemBasicInformation, ((void*)0), 0, ((void*)0));
    ok( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);


    trace("Check no SystemInformation buffer\n");
    status = pNtQuerySystemInformation(SystemBasicInformation, ((void*)0), sizeof(sbi), ((void*)0));
    ok( status == STATUS_ACCESS_VIOLATION || status == STATUS_INVALID_PARAMETER ,
        "Expected STATUS_ACCESS_VIOLATION or STATUS_INVALID_PARAMETER, got %08x\n", status);


    trace("Check no ReturnLength pointer\n");
    status = pNtQuerySystemInformation(SystemBasicInformation, &sbi, sizeof(sbi), ((void*)0));
    ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);


    trace("Check a too large buffer size\n");
    status = pNtQuerySystemInformation(SystemBasicInformation, &sbi, sizeof(sbi) * 2, &ReturnLength);
    ok( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);


    trace("Check with correct parameters\n");
    status = pNtQuerySystemInformation(SystemBasicInformation, &sbi, sizeof(sbi), &ReturnLength);
    ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    ok( sizeof(sbi) == ReturnLength, "Inconsistent length %d\n", ReturnLength);


    trace("Number of Processors : %d\n", sbi.NumberOfProcessors);
    ok( sbi.NumberOfProcessors > 0, "Expected more than 0 processors, got %d\n", sbi.NumberOfProcessors);
}
