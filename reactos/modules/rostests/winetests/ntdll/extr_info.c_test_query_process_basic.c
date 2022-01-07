
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pbi ;
typedef scalar_t__ ULONG_PTR ;
typedef int ULONG ;
typedef int PPEB ;
typedef int NTSTATUS ;
typedef int DWORD_PTR ;


 int * GetCurrentProcess () ;
 int ProcessBasicInformation ;
 int STATUS_ACCESS_VIOLATION ;
 int STATUS_INFO_LENGTH_MISMATCH ;
 int STATUS_INVALID_HANDLE ;
 int STATUS_INVALID_INFO_CLASS ;
 int STATUS_NOT_IMPLEMENTED ;
 int STATUS_SUCCESS ;
 int ok (int,char*,...) ;
 int pNtQueryInformationProcess (int *,int,struct _PROCESS_BASIC_INFORMATION_PRIVATE*,int,int*) ;
 int trace (char*,...) ;

__attribute__((used)) static void test_query_process_basic(void)
{
    NTSTATUS status;
    ULONG ReturnLength;

    typedef struct _PROCESS_BASIC_INFORMATION_PRIVATE {
        DWORD_PTR ExitStatus;
        PPEB PebBaseAddress;
        DWORD_PTR AffinityMask;
        DWORD_PTR BasePriority;
        ULONG_PTR UniqueProcessId;
        ULONG_PTR InheritedFromUniqueProcessId;
    } PROCESS_BASIC_INFORMATION_PRIVATE;

    PROCESS_BASIC_INFORMATION_PRIVATE pbi;






    trace("Check nonexistent info class\n");
    status = pNtQueryInformationProcess(((void*)0), -1, ((void*)0), 0, ((void*)0));
    ok( status == STATUS_INVALID_INFO_CLASS || status == STATUS_NOT_IMPLEMENTED ,
        "Expected STATUS_INVALID_INFO_CLASS or STATUS_NOT_IMPLEMENTED, got %08x\n", status);


    trace("Check NULL handle and buffer and zero-length buffersize\n");
    status = pNtQueryInformationProcess(((void*)0), ProcessBasicInformation, ((void*)0), 0, ((void*)0));
    ok( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);


    trace("Check NULL handle and buffer\n");
    status = pNtQueryInformationProcess(((void*)0), ProcessBasicInformation, ((void*)0), sizeof(pbi), ((void*)0));
    ok( status == STATUS_ACCESS_VIOLATION || status == STATUS_INVALID_HANDLE,
        "Expected STATUS_ACCESS_VIOLATION or STATUS_INVALID_HANDLE(W2K3), got %08x\n", status);


    trace("Check NULL handle\n");
    status = pNtQueryInformationProcess(((void*)0), ProcessBasicInformation, &pbi, sizeof(pbi), ((void*)0));
    ok( status == STATUS_INVALID_HANDLE, "Expected STATUS_INVALID_HANDLE, got %08x\n", status);


    trace("Check NULL handle and too large buffersize\n");
    status = pNtQueryInformationProcess(((void*)0), ProcessBasicInformation, &pbi, sizeof(pbi) * 2, ((void*)0));
    ok( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);


    trace("Check NULL ReturnLength\n");
    status = pNtQueryInformationProcess(GetCurrentProcess(), ProcessBasicInformation, &pbi, sizeof(pbi), ((void*)0));
    ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);


    trace("Check with correct parameters\n");
    status = pNtQueryInformationProcess(GetCurrentProcess(), ProcessBasicInformation, &pbi, sizeof(pbi), &ReturnLength);
    ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    ok( sizeof(pbi) == ReturnLength, "Inconsistent length %d\n", ReturnLength);


    trace("Too large buffersize\n");
    status = pNtQueryInformationProcess(GetCurrentProcess(), ProcessBasicInformation, &pbi, sizeof(pbi) * 2, &ReturnLength);
    ok( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);
    ok( sizeof(pbi) == ReturnLength, "Inconsistent length %d\n", ReturnLength);


    trace("ProcessID : %lx\n", pbi.UniqueProcessId);
    ok( pbi.UniqueProcessId > 0, "Expected a ProcessID > 0, got 0\n");
}
