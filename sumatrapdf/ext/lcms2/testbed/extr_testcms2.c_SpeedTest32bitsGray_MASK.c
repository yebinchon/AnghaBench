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
typedef  int cmsUInt32Number ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  scalar_t__ cmsFloat64Number ;
typedef  int cmsFloat32Number ;
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  TYPE_GRAY_FLT ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int) ; 
 int /*<<< orphan*/  cmsFLAGS_NOCACHE ; 
 int /*<<< orphan*/  FUNC9 (int*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static
void FUNC11(const char * Title, cmsHPROFILE hlcmsProfileIn, cmsHPROFILE hlcmsProfileOut, cmsInt32Number Intent)
{
    cmsInt32Number r, g, b, j;
    clock_t atime;
    cmsFloat64Number diff;
    cmsHTRANSFORM hlcmsxform;
    cmsFloat32Number *In;
    cmsUInt32Number Mb;
    cmsUInt32Number Interval = 4; // Power of 2 number to increment r,g,b values by in the loops to keep the test duration practically short
    cmsUInt32Number NumPixels;

    if (hlcmsProfileIn == NULL || hlcmsProfileOut == NULL)
        FUNC1("Unable to open profiles");

    hlcmsxform  = FUNC6(FUNC0(), hlcmsProfileIn,
        TYPE_GRAY_FLT, hlcmsProfileOut, TYPE_GRAY_FLT, Intent, cmsFLAGS_NOCACHE);
    FUNC5(FUNC0(), hlcmsProfileIn);
    FUNC5(FUNC0(), hlcmsProfileOut);

    NumPixels = 256 / Interval * 256 / Interval * 256 / Interval;
    Mb = NumPixels * sizeof(cmsFloat32Number);

    In = (cmsFloat32Number*) FUNC10(Mb);

    j = 0;
    for (r = 0; r < 256; r += Interval)
        for (g = 0; g < 256; g += Interval)
            for (b = 0; b < 256; b += Interval) {

                In[j] = ((r + g + b) / 768.0f);

                j++;
            }

    FUNC3(Title);

    atime = FUNC4();

    FUNC8(FUNC0(), hlcmsxform, In, In, NumPixels);

    diff = FUNC4() - atime;
    FUNC9(In);

    FUNC2(Mb, sizeof(cmsFloat32Number), diff);
    FUNC7(FUNC0(), hlcmsxform);
}