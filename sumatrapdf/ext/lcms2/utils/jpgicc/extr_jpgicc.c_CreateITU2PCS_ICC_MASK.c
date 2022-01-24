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
typedef  int /*<<< orphan*/  cmsStage ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  GRID_POINTS ; 
 int /*<<< orphan*/  ITU2PCS ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsSigAToB0Tag ; 
 int /*<<< orphan*/  cmsSigColorSpaceClass ; 
 int /*<<< orphan*/  cmsSigLabData ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsHPROFILE FUNC10(void)
{
    cmsHPROFILE hProfile;
    cmsPipeline* AToB0;
    cmsStage* ColorMap;

    AToB0 = FUNC1(0, 3, 3);
    if (AToB0 == NULL) return NULL;

    ColorMap = FUNC7(0, GRID_POINTS, 3, 3, NULL);
    if (ColorMap == NULL) return NULL;

    FUNC3(NULL, AToB0, cmsAT_BEGIN, ColorMap);
    FUNC8(NULL, ColorMap, ITU2PCS, NULL, 0);

    hProfile = FUNC0(0);
    if (hProfile == NULL) {
        FUNC2(NULL, AToB0);
        return NULL;
    }

    FUNC9(NULL, hProfile, cmsSigAToB0Tag, AToB0);
    FUNC4(NULL, hProfile, cmsSigLabData);
    FUNC6(NULL, hProfile, cmsSigLabData);
    FUNC5(NULL, hProfile, cmsSigColorSpaceClass);
    FUNC2(NULL, AToB0);

    return hProfile;
}