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
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  cmsAT_END ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static
void FUNC5(cmsPipeline* lut, cmsFloat64Number Curve)
{
    cmsToneCurve* id = FUNC1(FUNC0(), Curve);
    cmsToneCurve* id3[3];

    id3[0] = id;
    id3[1] = id;
    id3[2] = id;

    FUNC3(FUNC0(), lut, cmsAT_END, FUNC4(FUNC0(), 3, id3));

    FUNC2(FUNC0(), id);
}