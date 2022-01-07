
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* DebugInfo; } ;
struct TYPE_8__ {int data; } ;
struct TYPE_11__ {TYPE_7__ cs; int cmdQueue; TYPE_1__ impl; TYPE_3__* transport; int shuttingDown; } ;
struct TYPE_10__ {int (* cleanupAdapter ) (int ) ;} ;
struct TYPE_9__ {scalar_t__* Spare; } ;
typedef TYPE_4__ NetBIOSAdapter ;


 int DeleteCriticalSection (TYPE_7__*) ;
 int NBCmdQueueCancelAll (int ) ;
 int NBCmdQueueDestroy (int ) ;
 int TRUE ;
 int memset (TYPE_4__*,int ,int) ;
 int stub1 (int ) ;

__attribute__((used)) static void nbShutdownAdapter(NetBIOSAdapter *adapter)
{
    if (adapter)
    {
        adapter->shuttingDown = TRUE;
        NBCmdQueueCancelAll(adapter->cmdQueue);
        if (adapter->transport->cleanupAdapter)
            adapter->transport->cleanupAdapter(adapter->impl.data);
        NBCmdQueueDestroy(adapter->cmdQueue);
        adapter->cs.DebugInfo->Spare[0] = 0;
        DeleteCriticalSection(&adapter->cs);
        memset(adapter, 0, sizeof(NetBIOSAdapter));
    }
}
