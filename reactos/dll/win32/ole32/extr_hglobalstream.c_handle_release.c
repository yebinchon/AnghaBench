
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* DebugInfo; } ;
struct handle_wrapper {TYPE_2__ lock; int * hglobal; scalar_t__ delete_on_release; int ref; } ;
typedef int ULONG ;
struct TYPE_3__ {scalar_t__* Spare; } ;


 int DeleteCriticalSection (TYPE_2__*) ;
 int GetProcessHeap () ;
 int GlobalFree (int *) ;
 int HeapFree (int ,int ,struct handle_wrapper*) ;
 int InterlockedDecrement (int *) ;

__attribute__((used)) static void handle_release(struct handle_wrapper *handle)
{
    ULONG ref = InterlockedDecrement(&handle->ref);

    if (!ref)
    {
        if (handle->delete_on_release)
        {
            GlobalFree(handle->hglobal);
            handle->hglobal = ((void*)0);
        }

        handle->lock.DebugInfo->Spare[0] = 0;
        DeleteCriticalSection(&handle->lock);
        HeapFree(GetProcessHeap(), 0, handle);
    }
}
