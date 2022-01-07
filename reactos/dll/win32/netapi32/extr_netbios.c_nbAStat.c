
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
struct TYPE_13__ {int sessionsLen; TYPE_1__ impl; TYPE_2__* transport; } ;
struct TYPE_12__ {int max_cfg_sess; int max_sess; } ;
struct TYPE_11__ {int ncb_length; char* ncb_callname; int ncb_buffer; } ;
struct TYPE_10__ {int (* astat ) (int ,TYPE_3__*) ;} ;
typedef TYPE_3__* PNCB ;
typedef TYPE_4__* PADAPTER_STATUS ;
typedef TYPE_5__ NetBIOSAdapter ;
typedef int ADAPTER_STATUS ;


 int NRC_BADDR ;
 int NRC_BRIDGE ;
 int NRC_BUFLEN ;
 int NRC_ILLCMD ;
 int NRC_INVADDRESS ;
 int stub1 (int ,TYPE_3__*) ;

__attribute__((used)) static UCHAR nbAStat(NetBIOSAdapter *adapter, PNCB ncb)
{
    UCHAR ret;

    if (!adapter) return NRC_BRIDGE;
    if (!adapter->transport->astat) return NRC_ILLCMD;
    if (!ncb) return NRC_INVADDRESS;
    if (!ncb->ncb_buffer) return NRC_BADDR;
    if (ncb->ncb_length < sizeof(ADAPTER_STATUS)) return NRC_BUFLEN;

    ret = adapter->transport->astat(adapter->impl.data, ncb);
    if (ncb->ncb_callname[0] == '*')
    {
        PADAPTER_STATUS astat = (PADAPTER_STATUS)ncb->ncb_buffer;

        astat->max_sess = astat->max_cfg_sess = adapter->sessionsLen;
    }
    return ret;
}
