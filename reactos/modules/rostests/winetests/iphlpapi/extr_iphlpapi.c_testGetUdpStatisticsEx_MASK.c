#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dwNumAddrs; int /*<<< orphan*/  dwOutDatagrams; int /*<<< orphan*/  dwInErrors; int /*<<< orphan*/  dwNoPorts; int /*<<< orphan*/  dwInDatagrams; } ;
typedef  TYPE_1__ MIB_UDPSTATS ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BAN ; 
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NOT_SUPPORTED ; 
 scalar_t__ NO_ERROR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int winetest_debug ; 

__attribute__((used)) static void FUNC5(void)
{
    DWORD apiReturn;
    MIB_UDPSTATS stats;

    if (!&pGetUdpStatisticsEx)
    {
        FUNC4( "GetUdpStatisticsEx not available\n" );
        return;
    }

    apiReturn = FUNC2(NULL, AF_INET);
    FUNC1(apiReturn == ERROR_INVALID_PARAMETER,
       "GetUdpStatisticsEx(NULL, AF_INET); returned %d, expected ERROR_INVALID_PARAMETER\n", apiReturn);

    apiReturn = FUNC2(&stats, AF_BAN);
    FUNC1(apiReturn == ERROR_INVALID_PARAMETER || apiReturn == ERROR_NOT_SUPPORTED,
       "GetUdpStatisticsEx(&stats, AF_BAN) returned %d, expected ERROR_INVALID_PARAMETER\n", apiReturn);

    apiReturn = FUNC2(&stats, AF_INET);
    FUNC1(apiReturn == NO_ERROR, "GetUdpStatisticsEx returned %d, expected NO_ERROR\n", apiReturn);
    if (apiReturn == NO_ERROR && winetest_debug > 1)
    {
        FUNC3( "UDP IPv4 Ex stats:\n" );
        FUNC3( "    dwInDatagrams:  %u\n", stats.dwInDatagrams );
        FUNC3( "    dwNoPorts:      %u\n", stats.dwNoPorts );
        FUNC3( "    dwInErrors:     %u\n", stats.dwInErrors );
        FUNC3( "    dwOutDatagrams: %u\n", stats.dwOutDatagrams );
        FUNC3( "    dwNumAddrs:     %u\n", stats.dwNumAddrs );
    }

    apiReturn = FUNC2(&stats, AF_INET6);
    FUNC1(apiReturn == NO_ERROR || FUNC0(apiReturn == ERROR_NOT_SUPPORTED),
       "GetUdpStatisticsEx returned %d, expected NO_ERROR\n", apiReturn);
    if (apiReturn == NO_ERROR && winetest_debug > 1)
    {
        FUNC3( "UDP IPv6 Ex stats:\n" );
        FUNC3( "    dwInDatagrams:  %u\n", stats.dwInDatagrams );
        FUNC3( "    dwNoPorts:      %u\n", stats.dwNoPorts );
        FUNC3( "    dwInErrors:     %u\n", stats.dwInErrors );
        FUNC3( "    dwOutDatagrams: %u\n", stats.dwOutDatagrams );
        FUNC3( "    dwNumAddrs:     %u\n", stats.dwNumAddrs );
    }
}