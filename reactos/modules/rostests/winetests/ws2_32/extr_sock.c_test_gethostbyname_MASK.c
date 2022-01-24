#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct in_addr {int dummy; } ;
struct hostent {scalar_t__ h_addr_list; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_11__ {char* String; } ;
struct TYPE_12__ {TYPE_2__ IpAddress; } ;
struct TYPE_13__ {int dwNumEntries; scalar_t__ Index; TYPE_3__ IpAddressList; TYPE_1__* table; struct TYPE_13__* Next; } ;
struct TYPE_10__ {scalar_t__ dwForwardIfIndex; scalar_t__ dwForwardDest; } ;
typedef  TYPE_4__* PMIB_IPFORWARDTABLE ;
typedef  TYPE_4__* PIP_ADAPTER_INFO ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int ERROR_BUFFER_OVERFLOW ; 
 int ERROR_INSUFFICIENT_BUFFER ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int NO_ERROR ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct hostent* FUNC4 (char*) ; 
 int FUNC5 (char*,int) ; 
 char* FUNC6 (struct in_addr) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void FUNC15(void)
{
    struct hostent *he;
    struct in_addr **addr_list;
    char name[256], first_ip[16];
    int ret, i, count;
    PMIB_IPFORWARDTABLE routes = NULL;
    PIP_ADAPTER_INFO adapters = NULL, k;
    DWORD adap_size = 0, route_size = 0;
    BOOL found_default = FALSE;
    BOOL local_ip = FALSE;

    ret = FUNC5(name, sizeof(name));
    FUNC7(ret == 0, "gethostname() call failed: %d\n", FUNC3());

    he = FUNC4(name);
    FUNC7(he != NULL, "gethostbyname(\"%s\") failed: %d\n", name, FUNC3());
#ifdef __REACTOS__ /* ROSTESTS-233 */
    if (he != NULL)
    {
#endif
        addr_list = (struct in_addr **)he->h_addr_list;
        FUNC12(first_ip, FUNC6(*addr_list[0]));

        FUNC13("List of local IPs:\n");
        for(count = 0; addr_list[count] != NULL; count++)
        {
            char *ip = FUNC6(*addr_list[count]);
            if (!FUNC11(ip, "127.0.0.1"))
                local_ip = TRUE;
            FUNC13("%s\n", ip);
        }
#ifdef __REACTOS__ /* ROSTESTS-233 */
    }
#endif

    if (local_ip)
    {
        FUNC7 (count == 1, "expected 127.0.0.1 to be the only IP returned\n");
        FUNC10("Only the loopback address is present, skipping tests\n");
        return;
    }

    if (!&pGetAdaptersInfo || !&pGetIpForwardTable)
    {
        FUNC14("GetAdaptersInfo and/or GetIpForwardTable not found, skipping tests\n");
        return;
    }

    ret = FUNC8(NULL, &adap_size);
    FUNC7 (ret  == ERROR_BUFFER_OVERFLOW, "GetAdaptersInfo failed with a different error: %d\n", ret);
    ret = FUNC9(NULL, &route_size, FALSE);
    FUNC7 (ret == ERROR_INSUFFICIENT_BUFFER, "GetIpForwardTable failed with a different error: %d\n", ret);

    adapters = FUNC1(FUNC0(), 0, adap_size);
    routes = FUNC1(FUNC0(), 0, route_size);

    ret = FUNC8(adapters, &adap_size);
    FUNC7 (ret  == NO_ERROR, "GetAdaptersInfo failed, error: %d\n", ret);
    ret = FUNC9(routes, &route_size, FALSE);
    FUNC7 (ret == NO_ERROR, "GetIpForwardTable failed, error: %d\n", ret);

    /* This test only has meaning if there is more than one IP configured */
    if (adapters->Next == NULL && count == 1)
    {
        FUNC10("Only one IP is present, skipping tests\n");
        goto cleanup;
    }

    for (i = 0; !found_default && i < routes->dwNumEntries; i++)
    {
        /* default route (ip 0.0.0.0) ? */
        if (routes->table[i].dwForwardDest) continue;

        for (k = adapters; k != NULL; k = k->Next)
        {
            char *ip;

            if (k->Index != routes->table[i].dwForwardIfIndex) continue;

            /* the first IP returned from gethostbyname must be a default route */
            ip = k->IpAddressList.IpAddress.String;
            if (!FUNC11(first_ip, ip))
            {
                found_default = TRUE;
                break;
            }
        }
    }
    FUNC7 (found_default, "failed to find the first IP from gethostbyname!\n");

cleanup:
    FUNC2(FUNC0(), 0, adapters);
    FUNC2(FUNC0(), 0, routes);
}