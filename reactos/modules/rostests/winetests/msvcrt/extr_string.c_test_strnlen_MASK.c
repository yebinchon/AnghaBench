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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 size_t FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    static const char str[] = "string";
    size_t res;

    if(!&p_strnlen) {
        FUNC2("strnlen not found\n");
        return;
    }

    res = FUNC1(str, 20);
    FUNC0(res == 6, "Returned length = %d\n", (int)res);

    res = FUNC1(str, 3);
    FUNC0(res == 3, "Returned length = %d\n", (int)res);

    res = FUNC1(NULL, 0);
    FUNC0(res == 0, "Returned length = %d\n", (int)res);
}