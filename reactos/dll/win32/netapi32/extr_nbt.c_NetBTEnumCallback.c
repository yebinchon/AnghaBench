
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
typedef int UCHAR ;
struct TYPE_11__ {int lana; TYPE_4__* data; } ;
struct TYPE_7__ {scalar_t__ dwIndex; } ;
struct TYPE_10__ {TYPE_1__ ipr; } ;
struct TYPE_9__ {size_t dwNumEntries; TYPE_2__* table; } ;
struct TYPE_8__ {scalar_t__ dwIndex; int dwAddr; } ;
typedef TYPE_3__* PMIB_IPADDRTABLE ;
typedef TYPE_4__ NetBTAdapter ;
typedef TYPE_5__ NetBIOSAdapterImpl ;
typedef size_t DWORD ;
typedef int BOOL ;


 int FALSE ;
 int INADDR_LOOPBACK ;
 int NetBIOSEnableAdapter (int ) ;
 int TRUE ;

__attribute__((used)) static BOOL NetBTEnumCallback(UCHAR totalLANAs, UCHAR lanaIndex,
 ULONG transport, const NetBIOSAdapterImpl *data, void *closure)
{
    BOOL ret;
    PMIB_IPADDRTABLE table = closure;

    if (table && data)
    {
        DWORD ndx;

        ret = FALSE;
        for (ndx = 0; !ret && ndx < table->dwNumEntries; ndx++)
        {
            const NetBTAdapter *adapter = data->data;

            if (table->table[ndx].dwIndex == adapter->ipr.dwIndex)
            {
                NetBIOSEnableAdapter(data->lana);
                table->table[ndx].dwAddr = INADDR_LOOPBACK;
                ret = TRUE;
            }
        }
    }
    else
        ret = FALSE;
    return ret;
}
