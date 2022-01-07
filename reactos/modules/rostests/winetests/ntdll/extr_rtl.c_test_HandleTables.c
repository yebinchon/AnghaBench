
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {int RtlHandle; } ;
typedef int RTL_HANDLE_TABLE ;
typedef int RTL_HANDLE ;
typedef TYPE_1__* NTSTATUS ;
typedef TYPE_1__ MY_HANDLE ;
typedef int BOOLEAN ;


 int RtlpMakeHandleAllocated (int *) ;
 TYPE_1__* STATUS_SUCCESS ;
 int ok (int,char*,...) ;
 scalar_t__ pRtlAllocateHandle (int *,int *) ;
 TYPE_1__* pRtlDestroyHandleTable (int *) ;
 int pRtlFreeHandle (int *,int *) ;
 int pRtlInitializeHandleTable (int,int,int *) ;
 int pRtlIsValidIndexHandle (int *,int ,int **) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_HandleTables(void)
{
    BOOLEAN result;
    NTSTATUS status;
    ULONG Index;
    MY_HANDLE * MyHandle;
    RTL_HANDLE_TABLE HandleTable;

    if (!pRtlInitializeHandleTable)
    {
        win_skip("RtlInitializeHandleTable is not available\n");
        return;
    }

    pRtlInitializeHandleTable(0x3FFF, sizeof(MY_HANDLE), &HandleTable);
    MyHandle = (MY_HANDLE *)pRtlAllocateHandle(&HandleTable, &Index);
    ok(MyHandle != ((void*)0), "RtlAllocateHandle failed\n");
    RtlpMakeHandleAllocated(&MyHandle->RtlHandle);
    MyHandle = ((void*)0);
    result = pRtlIsValidIndexHandle(&HandleTable, Index, (RTL_HANDLE **)&MyHandle);
    ok(result, "Handle %p wasn't valid\n", MyHandle);
    result = pRtlFreeHandle(&HandleTable, &MyHandle->RtlHandle);
    ok(result, "Couldn't free handle %p\n", MyHandle);
    status = pRtlDestroyHandleTable(&HandleTable);
    ok(status == STATUS_SUCCESS, "RtlDestroyHandleTable failed with error 0x%08x\n", status);
}
