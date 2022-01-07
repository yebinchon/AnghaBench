
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_9__ {int data; } ;
struct TYPE_11__ {int cs; TYPE_2__ impl; TYPE_1__* transport; } ;
struct TYPE_10__ {int data; } ;
struct TYPE_8__ {int (* hangup ) (int ,int ) ;} ;
typedef TYPE_3__ NetBIOSSession ;
typedef TYPE_4__ NetBIOSAdapter ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int NRC_BRIDGE ;
 int NRC_ILLCMD ;
 int NRC_SNUMOUT ;
 int memset (TYPE_3__*,int ,int) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static UCHAR nbInternalHangup(NetBIOSAdapter *adapter, NetBIOSSession *session)
{
    UCHAR ret;

    if (!adapter) return NRC_BRIDGE;
    if (!session) return NRC_SNUMOUT;

    if (adapter->transport->hangup)
        ret = adapter->transport->hangup(adapter->impl.data, session->data);
    else
        ret = NRC_ILLCMD;
    EnterCriticalSection(&adapter->cs);
    memset(session, 0, sizeof(NetBIOSSession));
    LeaveCriticalSection(&adapter->cs);
    return ret;
}
