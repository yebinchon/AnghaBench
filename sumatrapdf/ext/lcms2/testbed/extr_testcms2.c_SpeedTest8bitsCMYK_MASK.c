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
typedef  void* cmsUInt8Number ;
typedef  int cmsUInt32Number ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  scalar_t__ cmsFloat64Number ;
typedef  scalar_t__ clock_t ;
struct TYPE_5__ {void* a; void* b; void* g; void* r; } ;
typedef  TYPE_1__ Scanline_rgba8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  INTENT_PERCEPTUAL ; 
 int /*<<< orphan*/  FUNC2 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  TYPE_CMYK_8 ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  cmsFLAGS_NOCACHE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static
void FUNC11(const char * Title, cmsHPROFILE hlcmsProfileIn, cmsHPROFILE hlcmsProfileOut)
{
    cmsInt32Number r, g, b, j;
    clock_t atime;
    cmsFloat64Number diff;
    cmsHTRANSFORM hlcmsxform;
    Scanline_rgba8 *In;
    cmsUInt32Number Mb;

    if (hlcmsProfileIn == NULL || hlcmsProfileOut == NULL)
        FUNC1("Unable to open profiles");

    hlcmsxform  = FUNC6(FUNC0(), hlcmsProfileIn, TYPE_CMYK_8,
                        hlcmsProfileOut, TYPE_CMYK_8, INTENT_PERCEPTUAL, cmsFLAGS_NOCACHE);
    FUNC5(FUNC0(), hlcmsProfileIn);
    FUNC5(FUNC0(), hlcmsProfileOut);

    Mb = 256*256*256*sizeof(Scanline_rgba8);

    In = (Scanline_rgba8*) FUNC10(Mb);

    j = 0;
    for (r=0; r < 256; r++)
        for (g=0; g < 256; g++)
            for (b=0; b < 256; b++) {

        In[j].r = (cmsUInt8Number) r;
        In[j].g = (cmsUInt8Number) g;
        In[j].b = (cmsUInt8Number) b;
        In[j].a = (cmsUInt8Number) 0;

        j++;
    }

    FUNC3(Title);

    atime = FUNC4();

    FUNC8(FUNC0(), hlcmsxform, In, In, 256*256*256);

    diff = FUNC4() - atime;

    FUNC9(In);

    FUNC2(Mb, sizeof(Scanline_rgba8), diff);


    FUNC7(FUNC0(), hlcmsxform);

}