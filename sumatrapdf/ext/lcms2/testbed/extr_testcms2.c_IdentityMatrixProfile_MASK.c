#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {TYPE_1__ member_0; } ;
typedef  TYPE_2__ cmsVEC3 ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int /*<<< orphan*/  cmsMAT3 ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsColorSpaceSignature ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  INTENT_RELATIVE_COLORIMETRIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsAT_END ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  cmsSigBToD1Tag ; 
 int /*<<< orphan*/  cmsSigColorSpaceClass ; 
 int /*<<< orphan*/  cmsSigDToB1Tag ; 
 int /*<<< orphan*/  cmsSigMediaWhitePointTag ; 
 int /*<<< orphan*/  cmsSigXYZData ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsHPROFILE FUNC14( cmsColorSpaceSignature dataSpace)
{
    cmsContext ctx = 0;
    cmsVEC3 zero = {{0,0,0}};
    cmsMAT3 identity;
    cmsPipeline* forward;
    cmsPipeline* reverse;
    cmsHPROFILE identityProfile = FUNC2( ctx);


    FUNC11(FUNC0(), identityProfile, 4.3);

    FUNC8(FUNC0(),  identityProfile,     cmsSigColorSpaceClass);
    FUNC7(FUNC0(), identityProfile,       dataSpace);
    FUNC10(FUNC0(), identityProfile,              cmsSigXYZData);

    FUNC9(FUNC0(), identityProfile,  INTENT_RELATIVE_COLORIMETRIC);

    FUNC13(FUNC0(), identityProfile, cmsSigMediaWhitePointTag, FUNC3(FUNC0()));



    FUNC1(FUNC0(),  &identity);

    // build forward transform.... (RGB to PCS)
    forward = FUNC4( 0, 3, 3);
    FUNC6(FUNC0(),  forward, cmsAT_END, FUNC12( ctx, 3, 3, (cmsFloat64Number*)&identity, (cmsFloat64Number*)&zero));
    FUNC13(FUNC0(),  identityProfile, cmsSigDToB1Tag, forward);

    FUNC5(FUNC0(), forward);

    reverse = FUNC4( 0, 3, 3);
    FUNC6(FUNC0(),  reverse, cmsAT_END, FUNC12( ctx, 3, 3, (cmsFloat64Number*)&identity, (cmsFloat64Number*)&zero));
    FUNC13(FUNC0(),  identityProfile, cmsSigBToD1Tag, reverse);

    FUNC5(FUNC0(), reverse);

    return identityProfile;
}