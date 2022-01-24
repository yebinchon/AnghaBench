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
typedef  int cmsUInt8Number ;
typedef  int cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INTENT_RELATIVE_COLORIMETRIC ; 
 int /*<<< orphan*/  TYPE_RGBA_16_SE ; 
 int /*<<< orphan*/  TYPE_RGBA_8 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int) ; 
 int /*<<< orphan*/  cmsFLAGS_COPY_ALPHA ; 

__attribute__((used)) static
int FUNC7(void)
{
    cmsHPROFILE input_profile = FUNC0();
    cmsHPROFILE output_profile = FUNC4(FUNC1());

    cmsHTRANSFORM tr = FUNC3(FUNC1(), input_profile, TYPE_RGBA_8, output_profile, TYPE_RGBA_16_SE, INTENT_RELATIVE_COLORIMETRIC, cmsFLAGS_COPY_ALPHA);

    cmsUInt8Number rgba[4] = { 40, 41, 41, 0xfa };
    cmsUInt16Number out[4];

    FUNC6(FUNC1(), tr, rgba, out, 1);
    FUNC2(FUNC1(), input_profile);
    FUNC2(FUNC1(), output_profile);
    FUNC5(FUNC1(), tr);

    if (out[0] != 0xf622 || out[1] != 0x7f24 || out[2] != 0x7f24)
        return 0;

    return 1;
}