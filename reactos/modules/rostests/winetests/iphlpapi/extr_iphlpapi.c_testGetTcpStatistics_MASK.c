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
struct TYPE_6__ {int /*<<< orphan*/  dwRtoAlgorithm; } ;
struct TYPE_5__ {int /*<<< orphan*/  dwNumConns; int /*<<< orphan*/  dwOutRsts; int /*<<< orphan*/  dwInErrs; int /*<<< orphan*/  dwRetransSegs; int /*<<< orphan*/  dwOutSegs; int /*<<< orphan*/  dwInSegs; int /*<<< orphan*/  dwCurrEstab; int /*<<< orphan*/  dwEstabResets; int /*<<< orphan*/  dwAttemptFails; int /*<<< orphan*/  dwPassiveOpens; int /*<<< orphan*/  dwActiveOpens; int /*<<< orphan*/  dwMaxConn; int /*<<< orphan*/  dwRtoMax; int /*<<< orphan*/  dwRtoMin; } ;
typedef  TYPE_1__ MIB_TCPSTATS ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NOT_SUPPORTED ; 
 scalar_t__ NO_ERROR ; 
 TYPE_3__ FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int winetest_debug ; 

__attribute__((used)) static void FUNC5(void)
{
  if (&pGetTcpStatistics) {
    DWORD apiReturn;
    MIB_TCPSTATS stats;

    apiReturn = FUNC2(NULL);
    if (apiReturn == ERROR_NOT_SUPPORTED) {
      FUNC3("GetTcpStatistics is not supported\n");
      return;
    }
    FUNC1(apiReturn == ERROR_INVALID_PARAMETER,
     "GetTcpStatistics(NULL) returned %d, expected ERROR_INVALID_PARAMETER\n",
     apiReturn);
    apiReturn = FUNC2(&stats);
    FUNC1(apiReturn == NO_ERROR,
      "GetTcpStatistics returned %d, expected NO_ERROR\n", apiReturn);
    if (apiReturn == NO_ERROR && winetest_debug > 1)
    {
        FUNC4( "TCP stats:\n" );
        FUNC4( "    dwRtoAlgorithm: %u\n", FUNC0(stats).dwRtoAlgorithm );
        FUNC4( "    dwRtoMin:       %u\n", stats.dwRtoMin );
        FUNC4( "    dwRtoMax:       %u\n", stats.dwRtoMax );
        FUNC4( "    dwMaxConn:      %u\n", stats.dwMaxConn );
        FUNC4( "    dwActiveOpens:  %u\n", stats.dwActiveOpens );
        FUNC4( "    dwPassiveOpens: %u\n", stats.dwPassiveOpens );
        FUNC4( "    dwAttemptFails: %u\n", stats.dwAttemptFails );
        FUNC4( "    dwEstabResets:  %u\n", stats.dwEstabResets );
        FUNC4( "    dwCurrEstab:    %u\n", stats.dwCurrEstab );
        FUNC4( "    dwInSegs:       %u\n", stats.dwInSegs );
        FUNC4( "    dwOutSegs:      %u\n", stats.dwOutSegs );
        FUNC4( "    dwRetransSegs:  %u\n", stats.dwRetransSegs );
        FUNC4( "    dwInErrs:       %u\n", stats.dwInErrs );
        FUNC4( "    dwOutRsts:      %u\n", stats.dwOutRsts );
        FUNC4( "    dwNumConns:     %u\n", stats.dwNumConns );
    }
  }
}