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
typedef  int /*<<< orphan*/  SIZE ;
typedef  int INT ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

void FUNC7()
{
    INT nFit;
    SIZE size;
    BOOL result;

    FUNC3(0);

    result = FUNC1(FUNC0(0), "test", 4, 1000, &nFit, NULL, &size);
    FUNC5(result, 1);
    FUNC5(nFit, 4);
    FUNC4(0);
    FUNC6("nFit = %d\n", nFit);

    result = FUNC1(FUNC0(0), "test", 4, 1, &nFit, NULL, &size);
    FUNC5(result, 1);
    FUNC5(nFit, 0);
    FUNC4(0);
    FUNC6("nFit = %d\n", nFit);

    result = FUNC1(FUNC0(0), "test", 4, 0, &nFit, NULL, &size);
    FUNC5(result, 1);
    FUNC5(nFit, 0);
    FUNC4(0);

    result = FUNC1(FUNC0(0), "test", 4, -1, &nFit, NULL, &size);
    FUNC5(result, 1);
    FUNC5(nFit, 4);
    FUNC4(0);

    result = FUNC1(FUNC0(0), "test", 4, -2, &nFit, NULL, &size);
    FUNC5(result, 0);
    FUNC4(87);

    result = FUNC2(FUNC0(0), L"test", 4, -10, &nFit, NULL, &size);
    FUNC5(result, 1);

    result = FUNC1(FUNC0(0), "test", 4, -10, &nFit, NULL, &size);
    FUNC5(result, 0);
}