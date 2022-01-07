
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_11__ {TYPE_2__* DebugInfo; } ;
struct TYPE_8__ {TYPE_3__* lpvBuffer; } ;
struct TYPE_10__ {TYPE_7__ cs; TYPE_1__ inet_buffers; int completion_event; int refs; } ;
struct TYPE_9__ {scalar_t__* Spare; } ;
typedef TYPE_3__ RpcHttpAsyncData ;


 int CloseHandle (int ) ;
 int DeleteCriticalSection (TYPE_7__*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int InterlockedDecrement (int *) ;
 int TRACE (char*,TYPE_3__*) ;

__attribute__((used)) static ULONG RpcHttpAsyncData_Release(RpcHttpAsyncData *data)
{
    ULONG refs = InterlockedDecrement(&data->refs);
    if (!refs)
    {
        TRACE("destroying async data %p\n", data);
        CloseHandle(data->completion_event);
        HeapFree(GetProcessHeap(), 0, data->inet_buffers.lpvBuffer);
        data->cs.DebugInfo->Spare[0] = 0;
        DeleteCriticalSection(&data->cs);
        HeapFree(GetProcessHeap(), 0, data);
    }
    return refs;
}
