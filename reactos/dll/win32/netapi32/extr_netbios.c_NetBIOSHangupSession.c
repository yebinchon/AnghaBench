
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {size_t ncb_lsn; int ncb_lana_num; } ;
struct TYPE_9__ {size_t sessionsLen; TYPE_1__* sessions; } ;
struct TYPE_8__ {scalar_t__ inUse; } ;
typedef TYPE_2__ NetBIOSAdapter ;
typedef TYPE_3__ NCB ;


 TYPE_2__* nbGetAdapter (int ) ;
 int nbHangup (TYPE_2__*,TYPE_3__ const*) ;

void NetBIOSHangupSession(const NCB *ncb)
{
    NetBIOSAdapter *adapter;

    if (!ncb) return;

    adapter = nbGetAdapter(ncb->ncb_lana_num);
    if (adapter)
    {
        if (ncb->ncb_lsn < adapter->sessionsLen &&
         adapter->sessions[ncb->ncb_lsn].inUse)
            nbHangup(adapter, ncb);
    }
}
