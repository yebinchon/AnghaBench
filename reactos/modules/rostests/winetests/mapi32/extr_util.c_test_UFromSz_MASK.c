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
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 unsigned int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    if (!&pUFromSz)
    {
        FUNC2("UFromSz is not available\n");
        return;
    }

    FUNC0(FUNC1("105679") == 105679u,
       "UFromSz: expected 105679, got %d\n", FUNC1("105679"));

    FUNC0(FUNC1(" 4") == 0, "UFromSz: expected 0. got %d\n",
       FUNC1(" 4"));
}