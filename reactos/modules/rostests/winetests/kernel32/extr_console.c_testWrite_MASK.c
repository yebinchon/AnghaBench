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
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  COORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEST_ATTRIB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(HANDLE hCon, COORD sbSize)
{
    /* FIXME: should in fact ensure that the sb is at least 10 characters wide */
    FUNC1(FUNC0(hCon, TEST_ATTRIB), "Setting default text color\n");
    FUNC2(hCon, sbSize, FALSE);
    FUNC3(hCon);
    FUNC2(hCon, sbSize, FALSE);
    FUNC6(hCon);
    FUNC2(hCon, sbSize, FALSE);
    FUNC4(hCon, sbSize);
    FUNC2(hCon, sbSize, FALSE);
    FUNC5(hCon, sbSize);
    FUNC2(hCon, sbSize, FALSE);
    FUNC7(hCon, sbSize);
    FUNC2(hCon, sbSize, FALSE);
    FUNC8(hCon, sbSize);
}