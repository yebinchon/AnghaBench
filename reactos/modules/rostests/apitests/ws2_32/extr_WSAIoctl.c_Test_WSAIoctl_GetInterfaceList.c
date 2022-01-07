
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WSADATA ;
typedef int ULONG ;
struct TYPE_9__ {int s_addr; } ;
struct TYPE_10__ {TYPE_1__ sin_addr; } ;
struct TYPE_14__ {TYPE_2__ AddressIn; } ;
struct TYPE_13__ {int iiFlags; TYPE_6__ iiNetmask; TYPE_6__ iiBroadcastAddress; TYPE_6__ iiAddress; } ;
struct TYPE_12__ {int dwAddr; int wType; int dwBCastAddr; int dwMask; } ;
struct TYPE_11__ {int dwNumEntries; TYPE_4__* table; } ;
typedef scalar_t__ SOCKET ;
typedef TYPE_3__* PMIB_IPADDRTABLE ;
typedef TYPE_4__* PMIB_IPADDRROW ;
typedef TYPE_5__* LPINTERFACE_INFO ;
typedef int INTERFACE_INFO ;
typedef int INT ;
typedef int BYTE ;


 int AF_INET ;
 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int IFF_BROADCAST ;
 int IFF_LOOPBACK ;
 int IFF_MULTICAST ;
 int IFF_UP ;
 int INADDR_LOOPBACK ;
 scalar_t__ INVALID_SOCKET ;
 int IPPROTO_IP ;
 int MAKEWORD (int,int) ;
 int MIB_IPADDR_DISCONNECTED ;
 int NO_ERROR ;
 int SIO_GET_INTERFACE_LIST ;
 int SOCK_STREAM ;
 scalar_t__ TRUE ;
 int Test_WSAIoctl_InitTest (TYPE_3__**) ;
 int WSACleanup () ;
 scalar_t__ WSAEFAULT ;
 scalar_t__ WSAGetLastError () ;
 int WSAIoctl (scalar_t__,int ,int ,int ,int *,int,int*,int ,int ) ;
 scalar_t__ WSASocket (int ,int ,int ,int ,int ,int ) ;
 int WSAStartup (int ,int *) ;
 int closesocket (scalar_t__) ;
 int free (TYPE_3__*) ;
 int ntohl (int ) ;
 int ok (int,char*,int,...) ;
 int ok_dec (int,int ) ;
 int ok_hex (int,int) ;
 int skip (char*) ;
 int trace (char*,...) ;
 int traceaddr (char*,TYPE_6__) ;
 int winetest_debug ;

void Test_WSAIoctl_GetInterfaceList()
{
    WSADATA wdata;
    INT iResult;
    SOCKET sck;
    ULONG buflen, BytesReturned, BCastAddr;
    ULONG infoCount, i1, j1, iiFlagsExpected;
    BYTE* buf = ((void*)0);
    LPINTERFACE_INFO ifInfo;
    PMIB_IPADDRTABLE pTable = ((void*)0);
    PMIB_IPADDRROW pRow;



    if (!Test_WSAIoctl_InitTest(&pTable))
        goto cleanup;


    iResult = WSAStartup(MAKEWORD(2, 2), &wdata);
    ok(iResult == 0, "WSAStartup failed. iResult = %d\n", iResult);


    sck = WSASocket(AF_INET, SOCK_STREAM, IPPROTO_IP, 0, 0, 0);
    ok(sck != INVALID_SOCKET, "WSASocket failed. sck = %d\n", (INT)sck);
    if (sck == INVALID_SOCKET)
    {
        skip("Failed to create socket!\n");
        goto cleanup;
    }


    buflen = sizeof(INTERFACE_INFO)-1;
    buf = (BYTE*)HeapAlloc(GetProcessHeap(), 0, buflen);
    if (buf == ((void*)0))
    {
        skip("Failed to allocate memory!\n");
        goto cleanup;
    }
    BytesReturned = 0;
    iResult = WSAIoctl(sck, SIO_GET_INTERFACE_LIST, 0, 0,
                       buf, buflen, &BytesReturned, 0, 0);
    ok(iResult == -1, "WSAIoctl/SIO_GET_INTERFACE_LIST did not fail! iResult = %d.\n", iResult);
    ok_hex(WSAGetLastError(), WSAEFAULT);
    ok(BytesReturned == 0, "WSAIoctl/SIO_GET_INTERFACE_LIST: BytesReturned should be 0, not %ld.\n", BytesReturned);
    HeapFree(GetProcessHeap(), 0, buf);
    buf = ((void*)0);





    i1 = 0;
    while (TRUE)
    {
        if (buf != ((void*)0))
        {
            HeapFree(GetProcessHeap(), 0, buf);
            buf = ((void*)0);
        }

        buflen = sizeof(INTERFACE_INFO) * (i1+1) * 32;
        buf = (BYTE*)HeapAlloc(GetProcessHeap(), 0, buflen);
        if (buf == ((void*)0))
        {
            skip("Failed to allocate memory!\n");
            goto cleanup;
        }
        BytesReturned = 0;
        iResult = WSAIoctl(sck, SIO_GET_INTERFACE_LIST, 0, 0,
                           buf, buflen, &BytesReturned, 0, 0);

        if (iResult == NO_ERROR)
            break;


        if ((i1 >= 4) || (WSAGetLastError() != WSAEFAULT))
        {
            ok_hex(iResult, NO_ERROR);
            skip("WSAIoctl / SIO_GET_INTERFACE_LIST\n");
            goto cleanup;
        }

        i1++;
    }

    ok_dec(BytesReturned % sizeof(INTERFACE_INFO), 0);


    infoCount = BytesReturned / sizeof(INTERFACE_INFO);
    ok(infoCount == pTable->dwNumEntries,
       "Wrong count of entries! Got %ld, expected %ld.\n", pTable->dwNumEntries, infoCount);

    if (winetest_debug >= 2)
    {
        trace("WSAIoctl\n");
        trace("  BytesReturned %ld - InfoCount %ld\n ", BytesReturned, infoCount);
        ifInfo = (LPINTERFACE_INFO)buf;
        for (i1 = 0; i1 < infoCount; i1++)
        {
            trace("entry-index %ld\n", i1);
            trace("  iiFlags %ld\n", ifInfo->iiFlags);
            traceaddr("ifInfo^.iiAddress", ifInfo->iiAddress);
            traceaddr("ifInfo^.iiBroadcastAddress", ifInfo->iiBroadcastAddress);
            traceaddr("ifInfo^.iiNetmask", ifInfo->iiNetmask);
            ifInfo++;
        }
    }


    ifInfo = (LPINTERFACE_INFO)buf;
    for (i1 = 0; i1 < infoCount; i1++)
    {
        if (winetest_debug >= 2)
            trace("Entry %ld\n", i1);
        for (j1 = 0; j1 < pTable->dwNumEntries; j1++)
        {
            if (ifInfo[i1].iiAddress.AddressIn.sin_addr.s_addr == pTable->table[j1].dwAddr)
            {
                pRow = &pTable->table[j1];
                break;
            }
        }
        if (j1 == pTable->dwNumEntries)
        {
            skip("Skipping interface\n");
            continue;
        }



        iiFlagsExpected = IFF_BROADCAST | IFF_MULTICAST;
        if ((pRow->wType & MIB_IPADDR_DISCONNECTED) == 0)
            iiFlagsExpected |= IFF_UP;
        if (pRow->dwAddr == ntohl(INADDR_LOOPBACK))
        {
            iiFlagsExpected |= IFF_LOOPBACK;


        }

        ok_hex(ifInfo[i1].iiFlags, iiFlagsExpected);
        ok_hex(ifInfo[i1].iiAddress.AddressIn.sin_addr.s_addr, pRow->dwAddr);

        BCastAddr = (pRow->dwBCastAddr == 1 && (iiFlagsExpected & IFF_BROADCAST) != 0) ? 0xFFFFFFFF : 0x0;
        ok_hex(ifInfo[i1].iiBroadcastAddress.AddressIn.sin_addr.s_addr, BCastAddr);
        ok_hex(ifInfo[i1].iiNetmask.AddressIn.sin_addr.s_addr, pRow->dwMask);
    }

cleanup:
    if (sck != 0)
        closesocket(sck);
    if (pTable != ((void*)0))
       free(pTable);
    if (buf != ((void*)0))
       HeapFree(GetProcessHeap(), 0, buf);
    WSACleanup();
}
