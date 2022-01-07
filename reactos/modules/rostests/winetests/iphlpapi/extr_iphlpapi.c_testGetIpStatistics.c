
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dwForwarding; } ;
struct TYPE_5__ {int dwNumRoutes; int dwNumAddr; int dwNumIf; int dwFragCreates; int dwFragFails; int dwFragOks; int dwReasmFails; int dwReasmOks; int dwReasmReqds; int dwReasmTimeout; int dwOutNoRoutes; int dwOutDiscards; int dwRoutingDiscards; int dwOutRequests; int dwInDelivers; int dwInDiscards; int dwInUnknownProtos; int dwForwDatagrams; int dwInAddrErrors; int dwInHdrErrors; int dwInReceives; int dwDefaultTTL; } ;
typedef TYPE_1__ MIB_IPSTATS ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_SUPPORTED ;
 scalar_t__ NO_ERROR ;
 TYPE_3__ U (TYPE_1__) ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pGetIpStatistics (TYPE_1__*) ;
 int skip (char*) ;
 int trace (char*,...) ;
 int winetest_debug ;

__attribute__((used)) static void testGetIpStatistics(void)
{
  if (pGetIpStatistics) {
    DWORD apiReturn;
    MIB_IPSTATS stats;

    apiReturn = pGetIpStatistics(((void*)0));
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      skip("GetIpStatistics is not supported\n");
      return;
    }
    ok(apiReturn == ERROR_INVALID_PARAMETER,
     "GetIpStatistics(NULL) returned %d, expected ERROR_INVALID_PARAMETER\n",
     apiReturn);
    apiReturn = pGetIpStatistics(&stats);
    ok(apiReturn == NO_ERROR,
      "GetIpStatistics returned %d, expected NO_ERROR\n", apiReturn);
    if (apiReturn == NO_ERROR && winetest_debug > 1)
    {
        trace( "IP stats:\n" );
        trace( "    dwForwarding:      %u\n", U(stats).dwForwarding );
        trace( "    dwDefaultTTL:      %u\n", stats.dwDefaultTTL );
        trace( "    dwInReceives:      %u\n", stats.dwInReceives );
        trace( "    dwInHdrErrors:     %u\n", stats.dwInHdrErrors );
        trace( "    dwInAddrErrors:    %u\n", stats.dwInAddrErrors );
        trace( "    dwForwDatagrams:   %u\n", stats.dwForwDatagrams );
        trace( "    dwInUnknownProtos: %u\n", stats.dwInUnknownProtos );
        trace( "    dwInDiscards:      %u\n", stats.dwInDiscards );
        trace( "    dwInDelivers:      %u\n", stats.dwInDelivers );
        trace( "    dwOutRequests:     %u\n", stats.dwOutRequests );
        trace( "    dwRoutingDiscards: %u\n", stats.dwRoutingDiscards );
        trace( "    dwOutDiscards:     %u\n", stats.dwOutDiscards );
        trace( "    dwOutNoRoutes:     %u\n", stats.dwOutNoRoutes );
        trace( "    dwReasmTimeout:    %u\n", stats.dwReasmTimeout );
        trace( "    dwReasmReqds:      %u\n", stats.dwReasmReqds );
        trace( "    dwReasmOks:        %u\n", stats.dwReasmOks );
        trace( "    dwReasmFails:      %u\n", stats.dwReasmFails );
        trace( "    dwFragOks:         %u\n", stats.dwFragOks );
        trace( "    dwFragFails:       %u\n", stats.dwFragFails );
        trace( "    dwFragCreates:     %u\n", stats.dwFragCreates );
        trace( "    dwNumIf:           %u\n", stats.dwNumIf );
        trace( "    dwNumAddr:         %u\n", stats.dwNumAddr );
        trace( "    dwNumRoutes:       %u\n", stats.dwNumRoutes );
    }
  }
}
