
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwNumAddrs; int dwOutDatagrams; int dwInErrors; int dwNoPorts; int dwInDatagrams; } ;
typedef TYPE_1__ MIB_UDPSTATS ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_NOT_SUPPORTED ;
 scalar_t__ NO_ERROR ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pGetUdpStatistics (TYPE_1__*) ;
 int skip (char*) ;
 int trace (char*,...) ;
 int winetest_debug ;

__attribute__((used)) static void testGetUdpStatistics(void)
{
  if (pGetUdpStatistics) {
    DWORD apiReturn;
    MIB_UDPSTATS stats;

    apiReturn = pGetUdpStatistics(((void*)0));
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      skip("GetUdpStatistics is not supported\n");
      return;
    }
    ok(apiReturn == ERROR_INVALID_PARAMETER,
     "GetUdpStatistics(NULL) returned %d, expected ERROR_INVALID_PARAMETER\n",
     apiReturn);
    apiReturn = pGetUdpStatistics(&stats);
    ok(apiReturn == NO_ERROR,
     "GetUdpStatistics returned %d, expected NO_ERROR\n", apiReturn);
    if (apiReturn == NO_ERROR && winetest_debug > 1)
    {
        trace( "UDP stats:\n" );
        trace( "    dwInDatagrams:  %u\n", stats.dwInDatagrams );
        trace( "    dwNoPorts:      %u\n", stats.dwNoPorts );
        trace( "    dwInErrors:     %u\n", stats.dwInErrors );
        trace( "    dwOutDatagrams: %u\n", stats.dwOutDatagrams );
        trace( "    dwNumAddrs:     %u\n", stats.dwNumAddrs );
    }
  }
}
