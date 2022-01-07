
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_10__ {size_t ncb_lsn; } ;
struct TYPE_9__ {size_t sessionsLen; TYPE_1__* sessions; } ;
struct TYPE_8__ {scalar_t__ state; int inUse; } ;
typedef TYPE_1__ NetBIOSSession ;
typedef TYPE_2__ NetBIOSAdapter ;
typedef TYPE_3__ NCB ;


 scalar_t__ HANGUP_PENDING ;
 int NRC_BRIDGE ;
 int NRC_INVADDRESS ;
 int NRC_SNUMOUT ;
 scalar_t__ SESSION_ESTABLISHED ;
 int nbInternalHangup (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static UCHAR nbHangup(NetBIOSAdapter *adapter, const NCB *ncb)
{
    UCHAR ret;
    NetBIOSSession *session;

    if (!adapter) return NRC_BRIDGE;
    if (!ncb) return NRC_INVADDRESS;
    if (ncb->ncb_lsn >= adapter->sessionsLen) return NRC_SNUMOUT;
    if (!adapter->sessions[ncb->ncb_lsn].inUse) return NRC_SNUMOUT;

    session = &adapter->sessions[ncb->ncb_lsn];
    if (session->state != SESSION_ESTABLISHED)
        ret = NRC_SNUMOUT;
    else
    {
        session->state = HANGUP_PENDING;
        ret = nbInternalHangup(adapter, session);
    }
    return ret;
}
