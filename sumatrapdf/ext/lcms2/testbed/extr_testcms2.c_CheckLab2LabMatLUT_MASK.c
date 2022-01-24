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
typedef  int cmsInt32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsAT_END ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
cmsInt32Number FUNC9(void)
{
    cmsPipeline* lut = FUNC6(FUNC3(), 3, 3);
    cmsInt32Number rc;

    FUNC8(FUNC3(), lut, cmsAT_END, FUNC4(FUNC3()));
    FUNC0(lut);
    FUNC8(FUNC3(), lut, cmsAT_END, FUNC5(FUNC3()));

    rc = FUNC1(lut) && FUNC2(lut, 3);

    FUNC7(FUNC3(), lut);

    return rc;
}