
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_9__ {int data; } ;
struct TYPE_13__ {size_t sessionsLen; TYPE_1__ impl; TYPE_2__* transport; TYPE_4__* sessions; } ;
struct TYPE_12__ {scalar_t__ state; int data; int inUse; } ;
struct TYPE_11__ {size_t ncb_lsn; int ncb_buffer; } ;
struct TYPE_10__ {int (* send ) (int ,int ,TYPE_3__*) ;} ;
typedef TYPE_3__* PNCB ;
typedef TYPE_4__ NetBIOSSession ;
typedef TYPE_5__ NetBIOSAdapter ;


 int NRC_BADDR ;
 int NRC_BRIDGE ;
 int NRC_ILLCMD ;
 int NRC_INVADDRESS ;
 int NRC_SNUMOUT ;
 scalar_t__ SESSION_ESTABLISHED ;
 int stub1 (int ,int ,TYPE_3__*) ;

__attribute__((used)) static UCHAR nbSend(NetBIOSAdapter *adapter, PNCB ncb)
{
    UCHAR ret;
    NetBIOSSession *session;

    if (!adapter) return NRC_BRIDGE;
    if (!adapter->transport->send) return NRC_ILLCMD;
    if (!ncb) return NRC_INVADDRESS;
    if (ncb->ncb_lsn >= adapter->sessionsLen) return NRC_SNUMOUT;
    if (!adapter->sessions[ncb->ncb_lsn].inUse) return NRC_SNUMOUT;
    if (!ncb->ncb_buffer) return NRC_BADDR;

    session = &adapter->sessions[ncb->ncb_lsn];
    if (session->state != SESSION_ESTABLISHED)
        ret = NRC_SNUMOUT;
    else
        ret = adapter->transport->send(adapter->impl.data, session->data, ncb);
    return ret;
}
