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
struct TYPE_3__ {int dwMciTimeFormat; } ;
typedef  TYPE_1__ WINE_MCIMIDI ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
#define  MCI_FORMAT_MILLISECONDS 131 
#define  MCI_FORMAT_SMPTE_24 130 
#define  MCI_FORMAT_SMPTE_25 129 
#define  MCI_FORMAT_SMPTE_30 128 
 int TIME_MS_IN_ONE_HOUR ; 
 int TIME_MS_IN_ONE_MINUTE ; 
 int TIME_MS_IN_ONE_SECOND ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static	DWORD	FUNC5(WINE_MCIMIDI* wmm, DWORD val)
{
    DWORD	ret = 0;

    switch (wmm->dwMciTimeFormat) {
    case MCI_FORMAT_MILLISECONDS:
	ret = val;
	break;
    case MCI_FORMAT_SMPTE_24:
	ret =
	    (FUNC0(FUNC1(val)) * 125) / 3 +             FUNC2(FUNC1(val)) * TIME_MS_IN_ONE_SECOND +
	    FUNC0(FUNC3(val)) * TIME_MS_IN_ONE_MINUTE + FUNC2(FUNC3(val)) * TIME_MS_IN_ONE_HOUR;
	break;
    case MCI_FORMAT_SMPTE_25:
	ret =
	    FUNC0(FUNC1(val)) * 40 + 		  	  FUNC2(FUNC1(val)) * TIME_MS_IN_ONE_SECOND +
	    FUNC0(FUNC3(val)) * TIME_MS_IN_ONE_MINUTE + FUNC2(FUNC3(val)) * TIME_MS_IN_ONE_HOUR;
	break;
    case MCI_FORMAT_SMPTE_30:
	ret =
	    (FUNC0(FUNC1(val)) * 100) / 3 + 		  FUNC2(FUNC1(val)) * TIME_MS_IN_ONE_SECOND +
	    FUNC0(FUNC3(val)) * TIME_MS_IN_ONE_MINUTE + FUNC2(FUNC3(val)) * TIME_MS_IN_ONE_HOUR;
	break;
    default:
	FUNC4("Bad time format %u!\n", wmm->dwMciTimeFormat);
    }
    /*
      TRACE("val=%u=0x%08x [tf=%u] => ret=%u\n", val, val, wmm->dwMciTimeFormat, ret);
    */
    return ret;
}