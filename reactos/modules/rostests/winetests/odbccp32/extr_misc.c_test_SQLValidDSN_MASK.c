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
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(void)
{
    static const char *invalid = "[]{}(),;?*=!@\\";
    char str[10];
    int i;
    BOOL ret;

    FUNC2(str, "wine10");
    for(i = 0; i < FUNC3(invalid); i++)
    {
        str[4] = invalid[i];
        ret = FUNC0(str);
        FUNC1(!ret, "got %d\n", ret);
    }

    /* Too large */
    ret = FUNC0("Wine123456789012345678901234567890");
    FUNC1(!ret, "got %d\n", ret);

    /* Valid with a space */
    ret = FUNC0("Wine Vinegar");
    FUNC1(ret, "got %d\n", ret);

    /* Max DSN name value */
    ret = FUNC0("12345678901234567890123456789012");
    FUNC1(ret, "got %d\n", ret);
}