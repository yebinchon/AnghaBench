
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct in_addr {int dummy; } ;
struct hostent {scalar_t__ h_addr_list; } ;
typedef int name ;
struct TYPE_11__ {char* String; } ;
struct TYPE_12__ {TYPE_2__ IpAddress; } ;
struct TYPE_13__ {int dwNumEntries; scalar_t__ Index; TYPE_3__ IpAddressList; TYPE_1__* table; struct TYPE_13__* Next; } ;
struct TYPE_10__ {scalar_t__ dwForwardIfIndex; scalar_t__ dwForwardDest; } ;
typedef TYPE_4__* PMIB_IPFORWARDTABLE ;
typedef TYPE_4__* PIP_ADAPTER_INFO ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_BUFFER_OVERFLOW ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int FALSE ;
 int GetProcessHeap () ;
 TYPE_4__* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,TYPE_4__*) ;
 int NO_ERROR ;
 int TRUE ;
 int WSAGetLastError () ;
 struct hostent* gethostbyname (char*) ;
 int gethostname (char*,int) ;
 char* inet_ntoa (struct in_addr) ;
 int ok (int,char*,...) ;
 int pGetAdaptersInfo (TYPE_4__*,int *) ;
 int pGetIpForwardTable (TYPE_4__*,int *,int) ;
 int skip (char*) ;
 int strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 int trace (char*,...) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_gethostbyname(void)
{
    struct hostent *he;
    struct in_addr **addr_list;
    char name[256], first_ip[16];
    int ret, i, count;
    PMIB_IPFORWARDTABLE routes = ((void*)0);
    PIP_ADAPTER_INFO adapters = ((void*)0), k;
    DWORD adap_size = 0, route_size = 0;
    BOOL found_default = FALSE;
    BOOL local_ip = FALSE;

    ret = gethostname(name, sizeof(name));
    ok(ret == 0, "gethostname() call failed: %d\n", WSAGetLastError());

    he = gethostbyname(name);
    ok(he != ((void*)0), "gethostbyname(\"%s\") failed: %d\n", name, WSAGetLastError());




        addr_list = (struct in_addr **)he->h_addr_list;
        strcpy(first_ip, inet_ntoa(*addr_list[0]));

        trace("List of local IPs:\n");
        for(count = 0; addr_list[count] != ((void*)0); count++)
        {
            char *ip = inet_ntoa(*addr_list[count]);
            if (!strcmp(ip, "127.0.0.1"))
                local_ip = TRUE;
            trace("%s\n", ip);
        }




    if (local_ip)
    {
        ok (count == 1, "expected 127.0.0.1 to be the only IP returned\n");
        skip("Only the loopback address is present, skipping tests\n");
        return;
    }

    if (!pGetAdaptersInfo || !pGetIpForwardTable)
    {
        win_skip("GetAdaptersInfo and/or GetIpForwardTable not found, skipping tests\n");
        return;
    }

    ret = pGetAdaptersInfo(((void*)0), &adap_size);
    ok (ret == ERROR_BUFFER_OVERFLOW, "GetAdaptersInfo failed with a different error: %d\n", ret);
    ret = pGetIpForwardTable(((void*)0), &route_size, FALSE);
    ok (ret == ERROR_INSUFFICIENT_BUFFER, "GetIpForwardTable failed with a different error: %d\n", ret);

    adapters = HeapAlloc(GetProcessHeap(), 0, adap_size);
    routes = HeapAlloc(GetProcessHeap(), 0, route_size);

    ret = pGetAdaptersInfo(adapters, &adap_size);
    ok (ret == NO_ERROR, "GetAdaptersInfo failed, error: %d\n", ret);
    ret = pGetIpForwardTable(routes, &route_size, FALSE);
    ok (ret == NO_ERROR, "GetIpForwardTable failed, error: %d\n", ret);


    if (adapters->Next == ((void*)0) && count == 1)
    {
        skip("Only one IP is present, skipping tests\n");
        goto cleanup;
    }

    for (i = 0; !found_default && i < routes->dwNumEntries; i++)
    {

        if (routes->table[i].dwForwardDest) continue;

        for (k = adapters; k != ((void*)0); k = k->Next)
        {
            char *ip;

            if (k->Index != routes->table[i].dwForwardIfIndex) continue;


            ip = k->IpAddressList.IpAddress.String;
            if (!strcmp(first_ip, ip))
            {
                found_default = TRUE;
                break;
            }
        }
    }
    ok (found_default, "failed to find the first IP from gethostbyname!\n");

cleanup:
    HeapFree(GetProcessHeap(), 0, adapters);
    HeapFree(GetProcessHeap(), 0, routes);
}
