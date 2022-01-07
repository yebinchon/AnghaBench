
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int priority ;
typedef int ULONG ;
struct TYPE_3__ {scalar_t__ PriorityClass; } ;
typedef TYPE_1__ PROCESS_PRIORITY_CLASS ;
typedef scalar_t__ NTSTATUS ;
typedef int DWORD ;
typedef int BOOL ;


 int BELOW_NORMAL_PRIORITY_CLASS ;
 int * GetCurrentProcess () ;
 scalar_t__ GetLastError () ;
 int GetPriorityClass (int *) ;
 scalar_t__ PROCESS_PRIOCLASS_BELOW_NORMAL ;
 int ProcessPriorityClass ;
 scalar_t__ STATUS_ACCESS_VIOLATION ;
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ;
 scalar_t__ STATUS_INVALID_HANDLE ;
 scalar_t__ STATUS_SUCCESS ;
 int SetPriorityClass (int *,int ) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pNtQueryInformationProcess (int *,int ,TYPE_1__**,int,int *) ;

__attribute__((used)) static void test_query_process_priority(void)
{
    PROCESS_PRIORITY_CLASS priority[2];
    ULONG ReturnLength;
    DWORD orig_priority;
    NTSTATUS status;
    BOOL ret;

    status = pNtQueryInformationProcess(((void*)0), ProcessPriorityClass, ((void*)0), sizeof(priority[0]), ((void*)0));
    ok(status == STATUS_ACCESS_VIOLATION || broken(status == STATUS_INVALID_HANDLE) ,
       "Expected STATUS_ACCESS_VIOLATION, got %08x\n", status);

    status = pNtQueryInformationProcess(((void*)0), ProcessPriorityClass, &priority, sizeof(priority[0]), ((void*)0));
    ok(status == STATUS_INVALID_HANDLE, "Expected STATUS_INVALID_HANDLE, got %08x\n", status);

    status = pNtQueryInformationProcess(GetCurrentProcess(), ProcessPriorityClass, &priority, 1, &ReturnLength);
    ok(status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);

    status = pNtQueryInformationProcess(GetCurrentProcess(), ProcessPriorityClass, &priority, sizeof(priority), &ReturnLength);
    ok(status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);

    orig_priority = GetPriorityClass(GetCurrentProcess());
    ret = SetPriorityClass(GetCurrentProcess(), BELOW_NORMAL_PRIORITY_CLASS);
    ok(ret, "Failed to set priority class: %u\n", GetLastError());

    status = pNtQueryInformationProcess(GetCurrentProcess(), ProcessPriorityClass, &priority, sizeof(priority[0]), &ReturnLength);
    ok(status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    ok(priority[0].PriorityClass == PROCESS_PRIOCLASS_BELOW_NORMAL,
       "Expected PROCESS_PRIOCLASS_BELOW_NORMAL, got %u\n", priority[0].PriorityClass);

    ret = SetPriorityClass(GetCurrentProcess(), orig_priority);
    ok(ret, "Failed to reset priority class: %u\n", GetLastError());
}
