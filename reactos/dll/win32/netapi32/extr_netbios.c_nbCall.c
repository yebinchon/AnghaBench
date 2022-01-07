
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t UCHAR ;
struct TYPE_10__ {int data; } ;
struct TYPE_13__ {size_t sessionsLen; TYPE_3__* sessions; TYPE_2__ impl; TYPE_1__* transport; int cs; } ;
struct TYPE_12__ {size_t ncb_lsn; int ncb_callname; int ncb_name; } ;
struct TYPE_11__ {scalar_t__ state; scalar_t__ inUse; int data; int remote_name; int local_name; } ;
struct TYPE_9__ {size_t (* call ) (int ,TYPE_4__*,int *) ;} ;
typedef TYPE_4__* PNCB ;
typedef TYPE_5__ NetBIOSAdapter ;


 scalar_t__ CALL_PENDING ;
 int EnterCriticalSection (int *) ;
 scalar_t__ FALSE ;
 int LeaveCriticalSection (int *) ;
 int NCBNAMSZ ;
 size_t NRC_BRIDGE ;
 size_t NRC_ENVNOTDEF ;
 size_t NRC_GOODRET ;
 size_t NRC_ILLCMD ;
 size_t NRC_INVADDRESS ;
 size_t NRC_LOCTFUL ;
 scalar_t__ SESSION_ESTABLISHED ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int memcpy (int ,int ,int ) ;
 size_t stub1 (int ,TYPE_4__*,int *) ;

__attribute__((used)) static UCHAR nbCall(NetBIOSAdapter *adapter, PNCB ncb)
{
    UCHAR ret, i;

    TRACE(": adapter %p, NCB %p\n", adapter, ncb);

    if (!adapter) return NRC_BRIDGE;
    if (adapter->sessionsLen == 0) return NRC_ENVNOTDEF;
    if (!adapter->transport->call) return NRC_ILLCMD;
    if (!ncb) return NRC_INVADDRESS;

    EnterCriticalSection(&adapter->cs);
    for (i = 0; i < adapter->sessionsLen && adapter->sessions[i].inUse; i++)
        ;
    if (i < adapter->sessionsLen)
    {
        adapter->sessions[i].inUse = TRUE;
        adapter->sessions[i].state = CALL_PENDING;
        memcpy(adapter->sessions[i].local_name, ncb->ncb_name, NCBNAMSZ);
        memcpy(adapter->sessions[i].remote_name, ncb->ncb_callname, NCBNAMSZ);
        ret = NRC_GOODRET;
    }
    else
        ret = NRC_LOCTFUL;
    LeaveCriticalSection(&adapter->cs);

    if (ret == NRC_GOODRET)
    {
        ret = adapter->transport->call(adapter->impl.data, ncb,
         &adapter->sessions[i].data);
        if (ret == NRC_GOODRET)
        {
            ncb->ncb_lsn = i;
            adapter->sessions[i].state = SESSION_ESTABLISHED;
        }
        else
        {
            adapter->sessions[i].inUse = FALSE;
            adapter->sessions[i].state = 0;
        }
    }
    TRACE("returning 0x%02x\n", ret);
    return ret;
}
