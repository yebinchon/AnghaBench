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
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  char* LPLUT ;

/* Variables and functions */
 int /*<<< orphan*/  GRID_POINTS ; 
 int /*<<< orphan*/  InputDirection ; 
 int /*<<< orphan*/  OutputDirection ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  icSigAToB0Tag ; 
 int /*<<< orphan*/  icSigBToA0Tag ; 
 int /*<<< orphan*/  icSigColorSpaceClass ; 
 int /*<<< orphan*/  icSigCopyrightTag ; 
 int /*<<< orphan*/  icSigDeviceMfgDescTag ; 
 int /*<<< orphan*/  icSigDeviceModelDescTag ; 
 int /*<<< orphan*/  icSigLabData ; 
 int /*<<< orphan*/  icSigProfileDescriptionTag ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

int FUNC12(int argc, char *argv[])
{
	LPLUT AToB0, BToA0;
	cmsHPROFILE hProfile;

	FUNC10(stderr, "Creating itufax.icm...");

	FUNC11("itufax.icm");
	hProfile = FUNC5("itufax.icm", "w");
	
    AToB0 = FUNC2();
	BToA0 = FUNC2(); 

	FUNC1(AToB0, GRID_POINTS, 3, 3);
	FUNC1(BToA0, GRID_POINTS, 3, 3);
    
	FUNC6(AToB0, InputDirection, NULL, 0);
	FUNC6(BToA0, OutputDirection, NULL, 0);
		
    FUNC0(hProfile, icSigAToB0Tag, AToB0);
	FUNC0(hProfile, icSigBToA0Tag, BToA0);

                                
	FUNC7(hProfile, icSigLabData);
    FUNC9(hProfile, icSigLabData);
    FUNC8(hProfile, icSigColorSpaceClass);

	FUNC0(hProfile, icSigProfileDescriptionTag, "ITU T.42/Fax JPEG CIEL*a*b*");
    FUNC0(hProfile, icSigCopyrightTag,          "No Copyright, use freely.");
    FUNC0(hProfile, icSigDeviceMfgDescTag,      "Little cms");    
    FUNC0(hProfile, icSigDeviceModelDescTag,    "ITU T.42/Fax JPEG CIEL*a*b*");
	
	FUNC3(hProfile);
    
	FUNC4(AToB0);
	FUNC4(BToA0);

	FUNC10(stderr, "Done.\n");

	return 0;
}