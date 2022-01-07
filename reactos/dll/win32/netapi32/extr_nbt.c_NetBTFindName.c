
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_18__ {scalar_t__ numAddresses; int * addresses; } ;
struct TYPE_13__ {int dwAddr; } ;
struct TYPE_17__ {TYPE_1__ ipr; } ;
struct TYPE_16__ {TYPE_3__* source_addr; TYPE_3__* destination_addr; } ;
struct TYPE_15__ {int node_count; } ;
struct TYPE_14__ {int ncb_length; scalar_t__ ncb_buffer; } ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_2__* PNCB ;
typedef TYPE_3__* PFIND_NAME_HEADER ;
typedef TYPE_4__* PFIND_NAME_BUFFER ;
typedef TYPE_5__ NetBTAdapter ;
typedef TYPE_6__ NBNameCacheEntry ;
typedef int FIND_NAME_HEADER ;
typedef int FIND_NAME_BUFFER ;
typedef scalar_t__ DWORD ;


 int NRC_BADDR ;
 int NRC_BUFLEN ;
 int NRC_CMDTMO ;
 int NRC_ENVNOTDEF ;
 int NRC_GOODRET ;
 int NRC_INVADDRESS ;
 int NetBTInternalFindName (TYPE_5__*,TYPE_2__*,TYPE_6__ const**) ;
 int TRACE (char*,void*,...) ;
 int memcpy (TYPE_3__*,int *,int) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ min (int,scalar_t__) ;

__attribute__((used)) static UCHAR NetBTFindName(void *adapt, PNCB ncb)
{
    NetBTAdapter *adapter = adapt;
    UCHAR ret;
    const NBNameCacheEntry *cacheEntry = ((void*)0);
    PFIND_NAME_HEADER foundName;

    TRACE("adapt %p, NCB %p\n", adapt, ncb);

    if (!adapter) return NRC_ENVNOTDEF;
    if (!ncb) return NRC_INVADDRESS;
    if (!ncb->ncb_buffer) return NRC_BADDR;
    if (ncb->ncb_length < sizeof(FIND_NAME_HEADER)) return NRC_BUFLEN;

    foundName = (PFIND_NAME_HEADER)ncb->ncb_buffer;
    memset(foundName, 0, sizeof(FIND_NAME_HEADER));

    ret = NetBTInternalFindName(adapter, ncb, &cacheEntry);
    if (ret == NRC_GOODRET)
    {
        if (cacheEntry)
        {
            DWORD spaceFor = min((ncb->ncb_length - sizeof(FIND_NAME_HEADER)) /
             sizeof(FIND_NAME_BUFFER), cacheEntry->numAddresses);
            DWORD ndx;

            for (ndx = 0; ndx < spaceFor; ndx++)
            {
                PFIND_NAME_BUFFER findNameBuffer;

                findNameBuffer =
                 (PFIND_NAME_BUFFER)((PUCHAR)foundName +
                 sizeof(FIND_NAME_HEADER) + foundName->node_count *
                 sizeof(FIND_NAME_BUFFER));
                memset(findNameBuffer->destination_addr, 0, 2);
                memcpy(findNameBuffer->destination_addr + 2,
                 &adapter->ipr.dwAddr, sizeof(DWORD));
                memset(findNameBuffer->source_addr, 0, 2);
                memcpy(findNameBuffer->source_addr + 2,
                 &cacheEntry->addresses[ndx], sizeof(DWORD));
                foundName->node_count++;
            }
            if (spaceFor < cacheEntry->numAddresses)
                ret = NRC_BUFLEN;
        }
        else
            ret = NRC_CMDTMO;
    }
    TRACE("returning 0x%02x\n", ret);
    return ret;
}
