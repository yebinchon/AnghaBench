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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 

__attribute__((used)) static void FUNC2(void)
{
    int r;

    r = FUNC0("0");
    FUNC1(r == 0, "atoi(0) = %d\n", r);

    r = FUNC0("-1");
    FUNC1(r == -1, "atoi(-1) = %d\n", r);

    r = FUNC0("1");
    FUNC1(r == 1, "atoi(1) = %d\n", r);

    r = FUNC0("4294967296");
    FUNC1(r == 0, "atoi(4294967296) = %d\n", r);
}