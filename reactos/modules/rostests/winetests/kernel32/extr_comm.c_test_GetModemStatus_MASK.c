#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int MS_CTS_ON ; 
 int MS_DSR_ON ; 
 int MS_RING_ON ; 
 int MS_RLSD_ON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,char*,char*) ; 

__attribute__((used)) static void FUNC3(HANDLE hcom)
{
    DWORD ModemStat = 0;

    FUNC1(FUNC0(hcom, &ModemStat), "GetCommModemStatus failed\n");
    FUNC2("GetCommModemStatus returned 0x%08x->%s%s%s%s\n", ModemStat,
	  (ModemStat &MS_RLSD_ON)?"MS_RLSD_ON ":"",
	  (ModemStat &MS_RING_ON)?"MS_RING_ON ":"",
	  (ModemStat &MS_DSR_ON)?"MS_DSR_ON ":"",
	  (ModemStat &MS_CTS_ON)?"MS_CTS_ON ":"");
}