
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* DebugInfo; } ;
struct TYPE_9__ {struct TYPE_9__* drv_id; TYPE_7__ crst; } ;
struct TYPE_8__ {scalar_t__* Spare; } ;
typedef TYPE_2__ MMDevice ;
typedef size_t DWORD ;


 int DeleteCriticalSection (TYPE_7__*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 size_t MMDevice_count ;
 TYPE_2__** MMDevice_head ;
 int TRACE (char*,int ) ;
 int debugstr_w (TYPE_2__*) ;

__attribute__((used)) static void MMDevice_Destroy(MMDevice *This)
{
    DWORD i;
    TRACE("Freeing %s\n", debugstr_w(This->drv_id));

    for (i = 0; i < MMDevice_count; ++i)
    {
        if (MMDevice_head[i] == This)
        {
            MMDevice_head[i] = MMDevice_head[--MMDevice_count];
            break;
        }
    }
    This->crst.DebugInfo->Spare[0] = 0;
    DeleteCriticalSection(&This->crst);
    HeapFree(GetProcessHeap(), 0, This->drv_id);
    HeapFree(GetProcessHeap(), 0, This);
}
