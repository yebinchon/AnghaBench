
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_15__ {scalar_t__ dwType; int bPhysAddr; int dwPhysAddrLen; int dwIndex; } ;
struct TYPE_11__ {int dwIndex; } ;
struct TYPE_14__ {int recv_success; int xmit_success; TYPE_1__ ipr; } ;
struct TYPE_13__ {int rev_major; int adapter_type; int max_sess_pkt_size; int recv_success; int xmit_success; int adapter_address; } ;
struct TYPE_12__ {int ncb_length; char* ncb_callname; int ncb_buffer; } ;
typedef TYPE_2__* PNCB ;
typedef TYPE_3__* PADAPTER_STATUS ;
typedef TYPE_4__ NetBTAdapter ;
typedef TYPE_5__ MIB_IFROW ;
typedef scalar_t__ DWORD ;
typedef int ADAPTER_STATUS ;


 scalar_t__ GetIfEntry (TYPE_5__*) ;
 scalar_t__ MIB_IF_TYPE_TOKENRING ;
 scalar_t__ NO_ERROR ;
 int NRC_BADDR ;
 int NRC_BRIDGE ;
 int NRC_BUFLEN ;
 int NRC_ENVNOTDEF ;
 int NRC_GOODRET ;
 int NRC_INVADDRESS ;
 int NetBTAstatRemote (TYPE_4__*,TYPE_2__*) ;
 int TRACE (char*,void*,...) ;
 int memcpy (int ,int ,scalar_t__) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ min (int ,int) ;

__attribute__((used)) static UCHAR NetBTAstat(void *adapt, PNCB ncb)
{
    NetBTAdapter *adapter = adapt;
    UCHAR ret;

    TRACE("adapt %p, NCB %p\n", adapt, ncb);

    if (!adapter) return NRC_ENVNOTDEF;
    if (!ncb) return NRC_INVADDRESS;
    if (!ncb->ncb_buffer) return NRC_BADDR;
    if (ncb->ncb_length < sizeof(ADAPTER_STATUS)) return NRC_BUFLEN;

    if (ncb->ncb_callname[0] == '*')
    {
        DWORD physAddrLen;
        MIB_IFROW ifRow;
        PADAPTER_STATUS astat = (PADAPTER_STATUS)ncb->ncb_buffer;

        memset(astat, 0, sizeof(ADAPTER_STATUS));
        astat->rev_major = 3;
        ifRow.dwIndex = adapter->ipr.dwIndex;
        if (GetIfEntry(&ifRow) != NO_ERROR)
            ret = NRC_BRIDGE;
        else
        {
            physAddrLen = min(ifRow.dwPhysAddrLen, 6);
            if (physAddrLen > 0)
                memcpy(astat->adapter_address, ifRow.bPhysAddr, physAddrLen);

            if (ifRow.dwType == MIB_IF_TYPE_TOKENRING)
                astat->adapter_type = 0xff;
            else
                astat->adapter_type = 0xfe;
            astat->max_sess_pkt_size = 0xffff;
            astat->xmit_success = adapter->xmit_success;
            astat->recv_success = adapter->recv_success;
            ret = NRC_GOODRET;
        }
    }
    else
        ret = NetBTAstatRemote(adapter, ncb);
    TRACE("returning 0x%02x\n", ret);
    return ret;
}
