#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * rgdwTypeCount; int /*<<< orphan*/  dwErrors; int /*<<< orphan*/  dwMsgs; } ;
struct TYPE_5__ {int /*<<< orphan*/ * rgdwTypeCount; int /*<<< orphan*/  dwErrors; int /*<<< orphan*/  dwMsgs; } ;
struct TYPE_7__ {TYPE_2__ icmpOutStats; TYPE_1__ icmpInStats; } ;
typedef  TYPE_3__ MIB_ICMP_EX ;
typedef  int INT ;
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
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int winetest_debug ; 

__attribute__((used)) static void FUNC5(void)
{
    DWORD apiReturn;
    MIB_ICMP_EX stats;

    if (!&pGetIcmpStatisticsEx)
    {
        FUNC4( "GetIcmpStatisticsEx not available\n" );
        return;
    }

    /* Crashes on Vista */
    if (1) {
        apiReturn = FUNC2(NULL, AF_INET);
        FUNC1(apiReturn == ERROR_INVALID_PARAMETER,
         "GetIcmpStatisticsEx(NULL, AF_INET) returned %d, expected ERROR_INVALID_PARAMETER\n", apiReturn);
    }

    apiReturn = FUNC2(&stats, AF_BAN);
    FUNC1(apiReturn == ERROR_INVALID_PARAMETER,
       "GetIcmpStatisticsEx(&stats, AF_BAN) returned %d, expected ERROR_INVALID_PARAMETER\n", apiReturn);

    apiReturn = FUNC2(&stats, AF_INET);
    FUNC1(apiReturn == NO_ERROR, "GetIcmpStatisticsEx returned %d, expected NO_ERROR\n", apiReturn);
    if (apiReturn == NO_ERROR && winetest_debug > 1)
    {
        INT i;
        FUNC3( "ICMP IPv4 Ex stats:           %8s %8s\n", "in", "out" );
        FUNC3( "    dwMsgs:              %8u %8u\n", stats.icmpInStats.dwMsgs, stats.icmpOutStats.dwMsgs );
        FUNC3( "    dwErrors:            %8u %8u\n", stats.icmpInStats.dwErrors, stats.icmpOutStats.dwErrors );
        for (i = 0; i < 256; i++)
            FUNC3( "    rgdwTypeCount[%3i]: %8u %8u\n", i, stats.icmpInStats.rgdwTypeCount[i], stats.icmpOutStats.rgdwTypeCount[i] );
    }

    apiReturn = FUNC2(&stats, AF_INET6);
    FUNC1(apiReturn == NO_ERROR || FUNC0(apiReturn == ERROR_NOT_SUPPORTED),
       "GetIcmpStatisticsEx returned %d, expected NO_ERROR\n", apiReturn);
    if (apiReturn == NO_ERROR && winetest_debug > 1)
    {
        INT i;
        FUNC3( "ICMP IPv6 Ex stats:           %8s %8s\n", "in", "out" );
        FUNC3( "    dwMsgs:              %8u %8u\n", stats.icmpInStats.dwMsgs, stats.icmpOutStats.dwMsgs );
        FUNC3( "    dwErrors:            %8u %8u\n", stats.icmpInStats.dwErrors, stats.icmpOutStats.dwErrors );
        for (i = 0; i < 256; i++)
            FUNC3( "    rgdwTypeCount[%3i]: %8u %8u\n", i, stats.icmpInStats.rgdwTypeCount[i], stats.icmpOutStats.rgdwTypeCount[i] );
    }
}