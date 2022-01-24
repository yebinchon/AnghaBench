#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsHPROFILE ;
struct TYPE_7__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_5__ {TYPE_3__ Blue; TYPE_3__ Green; TYPE_3__ Red; } ;
typedef  TYPE_1__ cmsCIExyYTRIPLE ;
struct TYPE_6__ {int /*<<< orphan*/  Blue; int /*<<< orphan*/  Green; int /*<<< orphan*/  Red; } ;
typedef  TYPE_2__ cmsCIEXYZTRIPLE ;
typedef  int /*<<< orphan*/  cmsBool ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INTENT_ABSOLUTE_COLORIMETRIC ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,double) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC8(void)
{
    cmsHPROFILE hsRGB;
    cmsCIEXYZTRIPLE tripXYZ;
    cmsCIExyYTRIPLE tripxyY;
    cmsBool result;

    FUNC6(FUNC0(), 0);
    hsRGB = FUNC5(FUNC0());
    if (!hsRGB) return 0;

    result = FUNC2(hsRGB, &tripXYZ,
        INTENT_ABSOLUTE_COLORIMETRIC);

    FUNC4(FUNC0(), hsRGB);
    if (!result) return 0;

    FUNC7(FUNC0(), &tripxyY.Red, &tripXYZ.Red);
    FUNC7(FUNC0(), &tripxyY.Green, &tripXYZ.Green);
    FUNC7(FUNC0(), &tripxyY.Blue, &tripXYZ.Blue);

    /* valus were taken from
    http://en.wikipedia.org/wiki/RGB_color_spaces#Specifications */

    if (!FUNC3("xRed", tripxyY.Red.x, 0.64) ||
        !FUNC3("yRed", tripxyY.Red.y, 0.33) ||
        !FUNC3("xGreen", tripxyY.Green.x, 0.30) ||
        !FUNC3("yGreen", tripxyY.Green.y, 0.60) ||
        !FUNC3("xBlue", tripxyY.Blue.x, 0.15) ||
        !FUNC3("yBlue", tripxyY.Blue.y, 0.06)) {
            FUNC1("One or more primaries are wrong.");
            return FALSE;
    }

    return TRUE;
}