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
typedef  int /*<<< orphan*/ * PCHAR ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(void)
{
    PCHAR p;
    BOOL res;
    DWORD size, min;

    /* allocate size 0 */
    p = FUNC2(0);
    FUNC1(p != NULL, "Expected non-NULL ptr\n");

    /* get the minimum size */
    min = FUNC4(p);

    /* free the block */
    res = FUNC3(p);
    FUNC1(res == TRUE, "Expected TRUE, got %d\n", res);

    /* allocate size 1 */
    p = FUNC2(1);
    FUNC1(p != NULL, "Expected non-NULL ptr\n");

    /* get the allocated size */
    size = FUNC4(p);
    FUNC1(size == 1 ||
       FUNC0(size == min), /* win9x */
       "Expected 1, got %d\n", size);

    /* reallocate the block */
    p = FUNC5(p, 2);
    FUNC1(p != NULL, "Expected non-NULL ptr\n");

    /* get the new size */
    size = FUNC4(p);
    FUNC1(size == 2 ||
       FUNC0(size == min), /* win9x */
       "Expected 2, got %d\n", size);

    /* free the block */
    res = FUNC3(p);
    FUNC1(res == TRUE, "Expected TRUE, got %d\n", res);

    /* free a NULL ptr */
    res = FUNC3(NULL);
    FUNC1(res == TRUE ||
       FUNC0(res == FALSE), /* win9x */
       "Expected TRUE, got %d\n", res);

    /* reallocate a NULL ptr */
    p = FUNC5(NULL, 2);
    FUNC1(p != NULL, "Expected non-NULL ptr\n");

    res = FUNC3(p);
    FUNC1(res == TRUE, "Expected TRUE, got %d\n", res);
}