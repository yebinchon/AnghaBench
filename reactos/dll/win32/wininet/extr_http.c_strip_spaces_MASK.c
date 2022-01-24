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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  char* LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(LPWSTR start)
{
    LPWSTR str = start;
    LPWSTR end;

    while (*str == ' ')
        str++;

    if (str != start)
        FUNC0(start, str, sizeof(WCHAR) * (FUNC1(str) + 1));

    end = start + FUNC1(start) - 1;
    while (end >= start && *end == ' ')
    {
        *end = '\0';
        end--;
    }
}