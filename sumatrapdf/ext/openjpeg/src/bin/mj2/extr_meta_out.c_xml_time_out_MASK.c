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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  DATE_LONGDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  LOCALE_USER_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*) ; 

void FUNC4(FILE* xmlout, time_t t)
{
    /* Windows specific */
    SYSTEMTIME st;
    char szLocalDate[255], szLocalTime[255];
    FUNC2(t, &st);
    FUNC0(LOCALE_USER_DEFAULT, DATE_LONGDATE, &st, NULL, szLocalDate, 255);
    FUNC1(LOCALE_USER_DEFAULT, 0, &st, NULL, szLocalTime, 255);
    FUNC3(xmlout, "%s %s", szLocalDate, szLocalTime);
}