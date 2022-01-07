
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t UCHAR ;
struct TYPE_12__ {int data; } ;
struct TYPE_18__ {TYPE_2__ impl; TYPE_1__* transport; } ;
struct TYPE_17__ {TYPE_4__* DebugInfo; } ;
struct TYPE_16__ {size_t tableSize; TYPE_8__* table; TYPE_7__ cs; } ;
struct TYPE_13__ {int (* cleanup ) () ;} ;
struct TYPE_15__ {TYPE_3__ transport; } ;
struct TYPE_14__ {scalar_t__* Spare; } ;
struct TYPE_11__ {int (* cleanupAdapter ) (int ) ;} ;


 int DeleteCriticalSection (TYPE_7__*) ;
 int EnterCriticalSection (TYPE_7__*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_8__*) ;
 int LeaveCriticalSection (TYPE_7__*) ;
 TYPE_6__ gNBTable ;
 size_t gNumTransports ;
 TYPE_5__* gTransports ;
 int stub1 (int ) ;
 int stub2 () ;

void NetBIOSShutdown(void)
{
    UCHAR i;

    EnterCriticalSection(&gNBTable.cs);
    for (i = 0; i < gNBTable.tableSize; i++)
    {
        if (gNBTable.table[i].transport &&
         gNBTable.table[i].transport->cleanupAdapter)
            gNBTable.table[i].transport->cleanupAdapter(
             gNBTable.table[i].impl.data);
    }
    for (i = 0; i < gNumTransports; i++)
        if (gTransports[i].transport.cleanup)
            gTransports[i].transport.cleanup();
    LeaveCriticalSection(&gNBTable.cs);
    gNBTable.cs.DebugInfo->Spare[0] = 0;
    DeleteCriticalSection(&gNBTable.cs);
    HeapFree(GetProcessHeap(), 0, gNBTable.table);
}
