#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dwForwarding; } ;
struct TYPE_5__ {int /*<<< orphan*/  dwNumRoutes; int /*<<< orphan*/  dwNumAddr; int /*<<< orphan*/  dwNumIf; int /*<<< orphan*/  dwFragCreates; int /*<<< orphan*/  dwFragFails; int /*<<< orphan*/  dwFragOks; int /*<<< orphan*/  dwReasmFails; int /*<<< orphan*/  dwReasmOks; int /*<<< orphan*/  dwReasmReqds; int /*<<< orphan*/  dwReasmTimeout; int /*<<< orphan*/  dwOutNoRoutes; int /*<<< orphan*/  dwOutDiscards; int /*<<< orphan*/  dwRoutingDiscards; int /*<<< orphan*/  dwOutRequests; int /*<<< orphan*/  dwInDelivers; int /*<<< orphan*/  dwInDiscards; int /*<<< orphan*/  dwInUnknownProtos; int /*<<< orphan*/  dwForwDatagrams; int /*<<< orphan*/  dwInAddrErrors; int /*<<< orphan*/  dwInHdrErrors; int /*<<< orphan*/  dwInReceives; int /*<<< orphan*/  dwDefaultTTL; } ;
typedef  TYPE_1__ MIB_IPSTATS ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BAN ; 
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NOT_SUPPORTED ; 
 scalar_t__ NO_ERROR ; 
 TYPE_3__ FUNC0 (TYPE_1__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int winetest_debug ; 

__attribute__((used)) static void FUNC6(void)
{
    DWORD apiReturn;
    MIB_IPSTATS stats;

    if (!&pGetIpStatisticsEx)
    {
        FUNC5( "GetIpStatisticsEx not available\n" );
        return;
    }

    apiReturn = FUNC3(NULL, AF_INET);
    FUNC2(apiReturn == ERROR_INVALID_PARAMETER,
       "GetIpStatisticsEx(NULL, AF_INET) returned %d, expected ERROR_INVALID_PARAMETER\n", apiReturn);

    apiReturn = FUNC3(&stats, AF_BAN);
    FUNC2(apiReturn == ERROR_INVALID_PARAMETER,
       "GetIpStatisticsEx(&stats, AF_BAN) returned %d, expected ERROR_INVALID_PARAMETER\n", apiReturn);

    apiReturn = FUNC3(&stats, AF_INET);
    FUNC2(apiReturn == NO_ERROR, "GetIpStatisticsEx returned %d, expected NO_ERROR\n", apiReturn);
    if (apiReturn == NO_ERROR && winetest_debug > 1)
    {
        FUNC4( "IP IPv4 Ex stats:\n" );
        FUNC4( "    dwForwarding:      %u\n", FUNC0(stats).dwForwarding );
        FUNC4( "    dwDefaultTTL:      %u\n", stats.dwDefaultTTL );
        FUNC4( "    dwInReceives:      %u\n", stats.dwInReceives );
        FUNC4( "    dwInHdrErrors:     %u\n", stats.dwInHdrErrors );
        FUNC4( "    dwInAddrErrors:    %u\n", stats.dwInAddrErrors );
        FUNC4( "    dwForwDatagrams:   %u\n", stats.dwForwDatagrams );
        FUNC4( "    dwInUnknownProtos: %u\n", stats.dwInUnknownProtos );
        FUNC4( "    dwInDiscards:      %u\n", stats.dwInDiscards );
        FUNC4( "    dwInDelivers:      %u\n", stats.dwInDelivers );
        FUNC4( "    dwOutRequests:     %u\n", stats.dwOutRequests );
        FUNC4( "    dwRoutingDiscards: %u\n", stats.dwRoutingDiscards );
        FUNC4( "    dwOutDiscards:     %u\n", stats.dwOutDiscards );
        FUNC4( "    dwOutNoRoutes:     %u\n", stats.dwOutNoRoutes );
        FUNC4( "    dwReasmTimeout:    %u\n", stats.dwReasmTimeout );
        FUNC4( "    dwReasmReqds:      %u\n", stats.dwReasmReqds );
        FUNC4( "    dwReasmOks:        %u\n", stats.dwReasmOks );
        FUNC4( "    dwReasmFails:      %u\n", stats.dwReasmFails );
        FUNC4( "    dwFragOks:         %u\n", stats.dwFragOks );
        FUNC4( "    dwFragFails:       %u\n", stats.dwFragFails );
        FUNC4( "    dwFragCreates:     %u\n", stats.dwFragCreates );
        FUNC4( "    dwNumIf:           %u\n", stats.dwNumIf );
        FUNC4( "    dwNumAddr:         %u\n", stats.dwNumAddr );
        FUNC4( "    dwNumRoutes:       %u\n", stats.dwNumRoutes );
    }

    apiReturn = FUNC3(&stats, AF_INET6);
    FUNC2(apiReturn == NO_ERROR || FUNC1(apiReturn == ERROR_NOT_SUPPORTED),
       "GetIpStatisticsEx returned %d, expected NO_ERROR\n", apiReturn);
    if (apiReturn == NO_ERROR && winetest_debug > 1)
    {
        FUNC4( "IP IPv6 Ex stats:\n" );
        FUNC4( "    dwForwarding:      %u\n", FUNC0(stats).dwForwarding );
        FUNC4( "    dwDefaultTTL:      %u\n", stats.dwDefaultTTL );
        FUNC4( "    dwInReceives:      %u\n", stats.dwInReceives );
        FUNC4( "    dwInHdrErrors:     %u\n", stats.dwInHdrErrors );
        FUNC4( "    dwInAddrErrors:    %u\n", stats.dwInAddrErrors );
        FUNC4( "    dwForwDatagrams:   %u\n", stats.dwForwDatagrams );
        FUNC4( "    dwInUnknownProtos: %u\n", stats.dwInUnknownProtos );
        FUNC4( "    dwInDiscards:      %u\n", stats.dwInDiscards );
        FUNC4( "    dwInDelivers:      %u\n", stats.dwInDelivers );
        FUNC4( "    dwOutRequests:     %u\n", stats.dwOutRequests );
        FUNC4( "    dwRoutingDiscards: %u\n", stats.dwRoutingDiscards );
        FUNC4( "    dwOutDiscards:     %u\n", stats.dwOutDiscards );
        FUNC4( "    dwOutNoRoutes:     %u\n", stats.dwOutNoRoutes );
        FUNC4( "    dwReasmTimeout:    %u\n", stats.dwReasmTimeout );
        FUNC4( "    dwReasmReqds:      %u\n", stats.dwReasmReqds );
        FUNC4( "    dwReasmOks:        %u\n", stats.dwReasmOks );
        FUNC4( "    dwReasmFails:      %u\n", stats.dwReasmFails );
        FUNC4( "    dwFragOks:         %u\n", stats.dwFragOks );
        FUNC4( "    dwFragFails:       %u\n", stats.dwFragFails );
        FUNC4( "    dwFragCreates:     %u\n", stats.dwFragCreates );
        FUNC4( "    dwNumIf:           %u\n", stats.dwNumIf );
        FUNC4( "    dwNumAddr:         %u\n", stats.dwNumAddr );
        FUNC4( "    dwNumRoutes:       %u\n", stats.dwNumRoutes );
    }
}