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
typedef  int /*<<< orphan*/  HMODULE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* p___p__daylight ; 
 void* p___p__dstbias ; 
 void* p___p__timezone ; 
 void* p__daylight ; 
 void* p__dstbias ; 
 void* p_asctime ; 
 void* p_gmtime ; 
 void* p_gmtime32 ; 
 void* p_gmtime32_s ; 
 void* p_localtime32_s ; 
 void* p_localtime64_s ; 
 void* p_mkgmtime32 ; 
 void* p_strdate_s ; 
 void* p_strftime ; 
 void* p_strtime_s ; 
 void* p_wcsftime ; 

__attribute__((used)) static void FUNC2(void)
{
    HMODULE hmod = FUNC1("msvcrt.dll");

    p_gmtime32 = (void*)FUNC0(hmod, "_gmtime32");
    p_gmtime = (void*)FUNC0(hmod, "gmtime");
    p_gmtime32_s = (void*)FUNC0(hmod, "_gmtime32_s");
    p_mkgmtime32 = (void*)FUNC0(hmod, "_mkgmtime32");
    p_strtime_s = (void*)FUNC0(hmod, "_strtime_s");
    p_strdate_s = (void*)FUNC0(hmod, "_strdate_s");
    p_localtime32_s = (void*)FUNC0(hmod, "_localtime32_s");
    p_localtime64_s = (void*)FUNC0(hmod, "_localtime64_s");
    p__daylight = (void*)FUNC0(hmod, "__daylight");
    p___p__daylight = (void*)FUNC0(hmod, "__p__daylight");
    p___p__dstbias = (void*)FUNC0(hmod, "__p__dstbias");
    p__dstbias = (void*)FUNC0(hmod, "__dstbias");
    p___p__timezone = (void*)FUNC0(hmod, "__p__timezone");
    p_strftime = (void*)FUNC0(hmod, "strftime");
    p_wcsftime = (void*)FUNC0(hmod, "wcsftime");
    p_asctime = (void*)FUNC0(hmod, "asctime");
}