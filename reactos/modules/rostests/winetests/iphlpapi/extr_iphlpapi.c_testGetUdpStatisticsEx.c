
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwNumAddrs; int dwOutDatagrams; int dwInErrors; int dwNoPorts; int dwInDatagrams; } ;
typedef TYPE_1__ MIB_UDPSTATS ;
typedef scalar_t__ DWORD ;


 int AF_BAN ;
 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_SUPPORTED ;
 scalar_t__ NO_ERROR ;
 scalar_t__ broken (int) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pGetUdpStatisticsEx (TYPE_1__*,int ) ;
 int trace (char*,...) ;
 int win_skip (char*) ;
 int winetest_debug ;

__attribute__((used)) static void testGetUdpStatisticsEx(void)
{
    DWORD apiReturn;
    MIB_UDPSTATS stats;

    if (!pGetUdpStatisticsEx)
    {
        win_skip( "GetUdpStatisticsEx not available\n" );
        return;
    }

    apiReturn = pGetUdpStatisticsEx(((void*)0), AF_INET);
    ok(apiReturn == ERROR_INVALID_PARAMETER,
       "GetUdpStatisticsEx(NULL, AF_INET); returned %d, expected ERROR_INVALID_PARAMETER\n", apiReturn);

    apiReturn = pGetUdpStatisticsEx(&stats, AF_BAN);
    ok(apiReturn == ERROR_INVALID_PARAMETER || apiReturn == ERROR_NOT_SUPPORTED,
       "GetUdpStatisticsEx(&stats, AF_BAN) returned %d, expected ERROR_INVALID_PARAMETER\n", apiReturn);

    apiReturn = pGetUdpStatisticsEx(&stats, AF_INET);
    ok(apiReturn == NO_ERROR, "GetUdpStatisticsEx returned %d, expected NO_ERROR\n", apiReturn);
    if (apiReturn == NO_ERROR && winetest_debug > 1)
    {
        trace( "UDP IPv4 Ex stats:\n" );
        trace( "    dwInDatagrams:  %u\n", stats.dwInDatagrams );
        trace( "    dwNoPorts:      %u\n", stats.dwNoPorts );
        trace( "    dwInErrors:     %u\n", stats.dwInErrors );
        trace( "    dwOutDatagrams: %u\n", stats.dwOutDatagrams );
        trace( "    dwNumAddrs:     %u\n", stats.dwNumAddrs );
    }

    apiReturn = pGetUdpStatisticsEx(&stats, AF_INET6);
    ok(apiReturn == NO_ERROR || broken(apiReturn == ERROR_NOT_SUPPORTED),
       "GetUdpStatisticsEx returned %d, expected NO_ERROR\n", apiReturn);
    if (apiReturn == NO_ERROR && winetest_debug > 1)
    {
        trace( "UDP IPv6 Ex stats:\n" );
        trace( "    dwInDatagrams:  %u\n", stats.dwInDatagrams );
        trace( "    dwNoPorts:      %u\n", stats.dwNoPorts );
        trace( "    dwInErrors:     %u\n", stats.dwInErrors );
        trace( "    dwOutDatagrams: %u\n", stats.dwOutDatagrams );
        trace( "    dwNumAddrs:     %u\n", stats.dwNumAddrs );
    }
}
