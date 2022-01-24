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
typedef  int /*<<< orphan*/ * HRGN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  ERROR ; 
 int ERROR_INVALID_PARAMETER ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6()
{
    HRGN hrgn1, hrgn2, hrgn3;

    hrgn1 = FUNC1(0, 0, 0, 0);
    hrgn2 = FUNC1(0, 0, 10, 10);
    hrgn3 = FUNC1(5, 5, 20, 20);

    FUNC3(0xbadbabe);
    FUNC5(FUNC0(NULL, NULL, NULL, 0), ERROR);
    FUNC5(FUNC0(hrgn1, hrgn2, hrgn3, 0), ERROR);
    FUNC5(FUNC0(hrgn1, hrgn2, hrgn3, 6), ERROR);
    FUNC4((FUNC2() == 0xbadbabe) || (FUNC2() == ERROR_INVALID_PARAMETER), "wrong error: %ld\n", FUNC2());

}