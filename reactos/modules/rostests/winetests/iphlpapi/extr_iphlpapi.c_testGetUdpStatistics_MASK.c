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
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NOT_SUPPORTED ; 
 scalar_t__ NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int winetest_debug ; 

__attribute__((used)) static void FUNC4(void)
{
  if (&pGetUdpStatistics) {
    DWORD apiReturn;
    MIB_UDPSTATS stats;

    apiReturn = FUNC1(NULL);
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      FUNC2("GetUdpStatistics is not supported\n");
      return;
    }
    FUNC0(apiReturn == ERROR_INVALID_PARAMETER,
     "GetUdpStatistics(NULL) returned %d, expected ERROR_INVALID_PARAMETER\n",
     apiReturn);
    apiReturn = FUNC1(&stats);
    FUNC0(apiReturn == NO_ERROR,
     "GetUdpStatistics returned %d, expected NO_ERROR\n", apiReturn);
    if (apiReturn == NO_ERROR && winetest_debug > 1)
    {
        FUNC3( "UDP stats:\n" );
        FUNC3( "    dwInDatagrams:  %u\n", stats.dwInDatagrams );
        FUNC3( "    dwNoPorts:      %u\n", stats.dwNoPorts );
        FUNC3( "    dwInErrors:     %u\n", stats.dwInErrors );
        FUNC3( "    dwOutDatagrams: %u\n", stats.dwOutDatagrams );
        FUNC3( "    dwNumAddrs:     %u\n", stats.dwNumAddrs );
    }
  }
}