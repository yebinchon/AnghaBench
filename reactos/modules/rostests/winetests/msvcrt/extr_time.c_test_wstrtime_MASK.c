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
typedef  char wchar_t ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int FUNC2 (char*,char*,int*,int*,int*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    wchar_t time[16], * result;
    int hour, minute, second, count, len;
    wchar_t format[] = { '%','0','2','d',':','%','0','2','d',':','%','0','2','d',0 };

    result = FUNC0(time);
    FUNC1(result == time, "Wrong return value\n");
    len = FUNC3(time);
    FUNC1(len == 8, "Wrong length: returned %d, should be 8\n", len);
    count = FUNC2(time, format, &hour, &minute, &second);
    FUNC1(count == 3, "Wrong format: count = %d, should be 3\n", count);
}