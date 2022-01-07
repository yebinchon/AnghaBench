
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * rgdwTypeCount; int dwErrors; int dwMsgs; } ;
struct TYPE_5__ {int * rgdwTypeCount; int dwErrors; int dwMsgs; } ;
struct TYPE_7__ {TYPE_2__ icmpOutStats; TYPE_1__ icmpInStats; } ;
typedef TYPE_3__ MIB_ICMP_EX ;
typedef int INT ;
typedef scalar_t__ DWORD ;


 int AF_BAN ;
 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_SUPPORTED ;
 scalar_t__ NO_ERROR ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pGetIcmpStatisticsEx (TYPE_3__*,int ) ;
 int trace (char*,...) ;
 int win_skip (char*) ;
 int winetest_debug ;

__attribute__((used)) static void testGetIcmpStatisticsEx(void)
{
    DWORD apiReturn;
    MIB_ICMP_EX stats;

    if (!pGetIcmpStatisticsEx)
    {
        win_skip( "GetIcmpStatisticsEx not available\n" );
        return;
    }


    if (1) {
        apiReturn = pGetIcmpStatisticsEx(((void*)0), AF_INET);
        ok(apiReturn == ERROR_INVALID_PARAMETER,
         "GetIcmpStatisticsEx(NULL, AF_INET) returned %d, expected ERROR_INVALID_PARAMETER\n", apiReturn);
    }

    apiReturn = pGetIcmpStatisticsEx(&stats, AF_BAN);
    ok(apiReturn == ERROR_INVALID_PARAMETER,
       "GetIcmpStatisticsEx(&stats, AF_BAN) returned %d, expected ERROR_INVALID_PARAMETER\n", apiReturn);

    apiReturn = pGetIcmpStatisticsEx(&stats, AF_INET);
    ok(apiReturn == NO_ERROR, "GetIcmpStatisticsEx returned %d, expected NO_ERROR\n", apiReturn);
    if (apiReturn == NO_ERROR && winetest_debug > 1)
    {
        INT i;
        trace( "ICMP IPv4 Ex stats:           %8s %8s\n", "in", "out" );
        trace( "    dwMsgs:              %8u %8u\n", stats.icmpInStats.dwMsgs, stats.icmpOutStats.dwMsgs );
        trace( "    dwErrors:            %8u %8u\n", stats.icmpInStats.dwErrors, stats.icmpOutStats.dwErrors );
        for (i = 0; i < 256; i++)
            trace( "    rgdwTypeCount[%3i]: %8u %8u\n", i, stats.icmpInStats.rgdwTypeCount[i], stats.icmpOutStats.rgdwTypeCount[i] );
    }

    apiReturn = pGetIcmpStatisticsEx(&stats, AF_INET6);
    ok(apiReturn == NO_ERROR || broken(apiReturn == ERROR_NOT_SUPPORTED),
       "GetIcmpStatisticsEx returned %d, expected NO_ERROR\n", apiReturn);
    if (apiReturn == NO_ERROR && winetest_debug > 1)
    {
        INT i;
        trace( "ICMP IPv6 Ex stats:           %8s %8s\n", "in", "out" );
        trace( "    dwMsgs:              %8u %8u\n", stats.icmpInStats.dwMsgs, stats.icmpOutStats.dwMsgs );
        trace( "    dwErrors:            %8u %8u\n", stats.icmpInStats.dwErrors, stats.icmpOutStats.dwErrors );
        for (i = 0; i < 256; i++)
            trace( "    rgdwTypeCount[%3i]: %8u %8u\n", i, stats.icmpInStats.rgdwTypeCount[i], stats.icmpOutStats.rgdwTypeCount[i] );
    }
}
