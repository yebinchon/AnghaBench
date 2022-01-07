
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UCHAR ;
struct TYPE_10__ {int dwAddr; int dwMask; } ;
struct TYPE_9__ {size_t dwNumEntries; TYPE_2__* table; } ;
typedef TYPE_1__* PMIB_IPADDRTABLE ;
typedef int MIB_IPADDRTABLE ;
typedef int MIB_IPADDRROW ;
typedef size_t DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 scalar_t__ GetIpAddrTable (TYPE_1__*,size_t*,scalar_t__) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int INADDR_LOOPBACK ;
 int IN_CLASSA_NET ;
 scalar_t__ MAX_LANA ;
 scalar_t__ NRC_GOODRET ;
 scalar_t__ NRC_OSRESNOTAV ;
 scalar_t__ NRC_SYSTEM ;
 int NetBIOSEnumAdapters (int ,int ,TYPE_1__*) ;
 int NetBTEnumCallback ;
 scalar_t__ NetBTRegisterAdapter (TYPE_2__*) ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int gTransportID ;
 int htonl (int) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int min (size_t,scalar_t__) ;

__attribute__((used)) static UCHAR NetBTEnum(void)
{
    UCHAR ret;
    DWORD size = 0;

    TRACE("\n");

    if (GetIpAddrTable(((void*)0), &size, FALSE) == ERROR_INSUFFICIENT_BUFFER)
    {
        PMIB_IPADDRTABLE ipAddrs, coalesceTable = ((void*)0);
        DWORD numIPAddrs = (size - sizeof(MIB_IPADDRTABLE)) /
         sizeof(MIB_IPADDRROW) + 1;

        ipAddrs = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, size);
        if (ipAddrs)
            coalesceTable = HeapAlloc(GetProcessHeap(),
             HEAP_ZERO_MEMORY, sizeof(MIB_IPADDRTABLE) +
             (min(numIPAddrs, MAX_LANA + 1) - 1) * sizeof(MIB_IPADDRROW));
        if (ipAddrs && coalesceTable)
        {
            if (GetIpAddrTable(ipAddrs, &size, FALSE) == ERROR_SUCCESS)
            {
                DWORD ndx;

                for (ndx = 0; ndx < ipAddrs->dwNumEntries; ndx++)
                {
                    if ((ipAddrs->table[ndx].dwAddr &
                     ipAddrs->table[ndx].dwMask) !=
                     htonl((INADDR_LOOPBACK & IN_CLASSA_NET)))
                    {
                        BOOL newNetwork = TRUE;
                        DWORD innerIndex;



                        for (innerIndex = 0; newNetwork &&
                         innerIndex < coalesceTable->dwNumEntries; innerIndex++)
                            if ((ipAddrs->table[ndx].dwAddr &
                             ipAddrs->table[ndx].dwMask) ==
                             (coalesceTable->table[innerIndex].dwAddr
                             & coalesceTable->table[innerIndex].dwMask))
                                newNetwork = FALSE;

                        if (newNetwork)
                            memcpy(&coalesceTable->table[
                             coalesceTable->dwNumEntries++],
                             &ipAddrs->table[ndx], sizeof(MIB_IPADDRROW));
                    }
                }

                NetBIOSEnumAdapters(gTransportID, NetBTEnumCallback,
                 coalesceTable);
                ret = NRC_GOODRET;
                for (ndx = 0; ret == NRC_GOODRET &&
                 ndx < coalesceTable->dwNumEntries; ndx++)
                    if (coalesceTable->table[ndx].dwAddr != INADDR_LOOPBACK)
                        ret = NetBTRegisterAdapter(&coalesceTable->table[ndx]);
            }
            else
                ret = NRC_SYSTEM;
            HeapFree(GetProcessHeap(), 0, ipAddrs);
            HeapFree(GetProcessHeap(), 0, coalesceTable);
        }
        else
            ret = NRC_OSRESNOTAV;
    }
    else
        ret = NRC_SYSTEM;
    TRACE("returning 0x%02x\n", ret);
    return ret;
}
