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
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    if (!&pUlFromSzHex)
    {
        FUNC2("UlFromSzHex is not available\n");
        return;
    }

    FUNC0(FUNC1("fF") == 0xffu,
       "UlFromSzHex: expected 0xff, got 0x%x\n", FUNC1("fF"));

    FUNC0(FUNC1(" c") == 0, "UlFromSzHex: expected 0x0. got 0x%x\n",
       FUNC1(" c"));
}