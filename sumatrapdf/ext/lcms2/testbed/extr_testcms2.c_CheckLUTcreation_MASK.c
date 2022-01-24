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
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  scalar_t__ cmsInt32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsInt32Number FUNC5(void)
{
    cmsPipeline* lut;
    cmsPipeline* lut2;
    cmsInt32Number n1, n2;

    lut = FUNC1(FUNC0(), 1, 1);
    n1 = FUNC4(FUNC0(), lut);
    lut2 = FUNC2(FUNC0(), lut);
    n2 = FUNC4(FUNC0(), lut2);

    FUNC3(FUNC0(), lut);
    FUNC3(FUNC0(), lut2);

    return (n1 == 0) && (n2 == 0);
}