
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_8__ {int dwIndex; } ;
struct TYPE_7__ {TYPE_2__ ipr; } ;
typedef TYPE_1__ NetBTAdapter ;
typedef TYPE_2__ MIB_IPADDRROW ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int NRC_BADDR ;
 int NRC_GOODRET ;
 int NRC_OSRESNOTAV ;
 int NRC_SYSTEM ;
 int NetBIOSRegisterAdapter (int ,int ,TYPE_1__*) ;
 int NetBTCleanupAdapter (TYPE_1__*) ;
 int gTransportID ;

__attribute__((used)) static UCHAR NetBTRegisterAdapter(const MIB_IPADDRROW *ipRow)
{
    UCHAR ret;
    NetBTAdapter *adapter;

    if (!ipRow) return NRC_BADDR;

    adapter = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(NetBTAdapter));
    if (adapter)
    {
        adapter->ipr = *ipRow;
        if (!NetBIOSRegisterAdapter(gTransportID, ipRow->dwIndex, adapter))
        {
            NetBTCleanupAdapter(adapter);
            ret = NRC_SYSTEM;
        }
        else
            ret = NRC_GOODRET;
    }
    else
        ret = NRC_OSRESNOTAV;
    return ret;
}
