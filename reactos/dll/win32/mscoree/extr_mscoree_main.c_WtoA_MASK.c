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
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

char *FUNC3(LPCWSTR wstr)
{
    int length;
    char *result;

    length = FUNC2(CP_UTF8, 0, wstr, -1, NULL, 0, NULL, NULL);

    result = FUNC1(FUNC0(), 0, length);

    if (result)
        FUNC2(CP_UTF8, 0, wstr, -1, result, length, NULL, NULL);

    return result;
}