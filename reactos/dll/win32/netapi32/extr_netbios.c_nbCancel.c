
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_11__ {int inUse; } ;
struct TYPE_10__ {size_t sessionsLen; int cmdQueue; TYPE_4__* sessions; } ;
struct TYPE_9__ {int ncb_command; size_t ncb_lsn; } ;
typedef TYPE_1__* PNCB ;
typedef TYPE_2__ NetBIOSAdapter ;


 int NBCmdQueueCancel (int ,TYPE_1__*) ;
 int NRC_BRIDGE ;
 int NRC_CANCEL ;
 int NRC_CANOCCR ;
 int NRC_CMDCAN ;
 int NRC_INVADDRESS ;
 int NRC_SNUMOUT ;
 int TRACE (char*,TYPE_2__*,...) ;
 int nbInternalHangup (TYPE_2__*,TYPE_4__*) ;

__attribute__((used)) static UCHAR nbCancel(NetBIOSAdapter *adapter, PNCB ncb)
{
    UCHAR ret;

    TRACE(": adapter %p, ncb %p\n", adapter, ncb);

    if (!adapter) return NRC_BRIDGE;
    if (!ncb) return NRC_INVADDRESS;

    switch (ncb->ncb_command & 0x7f)
    {
        case 136:
        case 138:
        case 139:
        case 133:
        case 131:
        case 128:
            ret = NRC_CANCEL;
            break;



        case 137:
        case 130:
        case 135:
        case 129:
        case 134:
        case 132:
        {
            if (ncb->ncb_lsn >= adapter->sessionsLen)
                ret = NRC_SNUMOUT;
            else if (!adapter->sessions[ncb->ncb_lsn].inUse)
                ret = NRC_SNUMOUT;
            else
            {
                ret = NBCmdQueueCancel(adapter->cmdQueue, ncb);
                if (ret == NRC_CMDCAN || ret == NRC_CANOCCR)
                    nbInternalHangup(adapter, &adapter->sessions[ncb->ncb_lsn]);
            }
            break;
        }

        default:
            ret = NBCmdQueueCancel(adapter->cmdQueue, ncb);
    }
    TRACE("returning 0x%02x\n", ret);
    return ret;
}
