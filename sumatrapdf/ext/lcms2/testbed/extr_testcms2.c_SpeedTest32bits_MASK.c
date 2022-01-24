#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int cmsUInt32Number ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  scalar_t__ cmsFloat64Number ;
typedef  scalar_t__ clock_t ;
struct TYPE_5__ {int r; int g; int b; int a; } ;
typedef  TYPE_1__ Scanline_rgba32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  TYPE_RGBA_FLT ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  cmsFLAGS_NOCACHE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static
void FUNC11(const char * Title, cmsHPROFILE hlcmsProfileIn, cmsHPROFILE hlcmsProfileOut, cmsInt32Number Intent)
{
    cmsInt32Number r, g, b, j;
    clock_t atime;
    cmsFloat64Number diff;
    cmsHTRANSFORM hlcmsxform;
    Scanline_rgba32 *In;
    cmsUInt32Number Mb;
    cmsUInt32Number Interval = 4; // Power of 2 number to increment r,g,b values by in the loops to keep the test duration practically short
    cmsUInt32Number NumPixels;

    if (hlcmsProfileIn == NULL || hlcmsProfileOut == NULL)
        FUNC1("Unable to open profiles");

    hlcmsxform  = FUNC6(FUNC0(), hlcmsProfileIn, TYPE_RGBA_FLT,
        hlcmsProfileOut, TYPE_RGBA_FLT, Intent, cmsFLAGS_NOCACHE);
    FUNC5(FUNC0(), hlcmsProfileIn);
    FUNC5(FUNC0(), hlcmsProfileOut);

    NumPixels = 256 / Interval * 256 / Interval * 256 / Interval;
    Mb = NumPixels * sizeof(Scanline_rgba32);

    In = (Scanline_rgba32 *) FUNC10(Mb);

    j = 0;
    for (r=0; r < 256; r += Interval)
        for (g=0; g < 256; g += Interval)
            for (b=0; b < 256; b += Interval) {

                In[j].r = r / 256.0f;
                In[j].g = g / 256.0f;
                In[j].b = b / 256.0f;
                In[j].a = (In[j].r + In[j].g + In[j].b) / 3;

                j++;
            }


    FUNC3(Title);

    atime = FUNC4();

    FUNC8(FUNC0(), hlcmsxform, In, In, NumPixels);

    diff = FUNC4() - atime;
    FUNC9(In);

    FUNC2(Mb, sizeof(Scanline_rgba32), diff);
    FUNC7(FUNC0(), hlcmsxform);

}