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
typedef  int /*<<< orphan*/  CARGO ;

/* Variables and functions */
 int /*<<< orphan*/  Forward ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Reverse ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int) ; 
 char* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  icSigAToB0Tag ; 
 int /*<<< orphan*/  icSigBToA0Tag ; 
 int /*<<< orphan*/  icSigCmyData ; 
 int /*<<< orphan*/  icSigCopyrightTag ; 
 int /*<<< orphan*/  icSigDeviceMfgDescTag ; 
 int /*<<< orphan*/  icSigDeviceModelDescTag ; 
 int /*<<< orphan*/  icSigOutputClass ; 
 int /*<<< orphan*/  icSigProfileDescriptionTag ; 
 int /*<<< orphan*/  stderr ; 

int FUNC13(void)
{
	LPLUT AToB0, BToA0;	
	CARGO Cargo;
	cmsHPROFILE hProfile;
	
	FUNC12(stderr, "Creating lcmscmy.icm...");	
	
	FUNC1(&Cargo);

	hProfile = FUNC7(NULL);
	

    AToB0 = FUNC5();
	BToA0 = FUNC5();

	FUNC4(AToB0, 25, 3, 3);
	FUNC4(BToA0, 25, 3, 3);
	
	
	FUNC9(AToB0, Reverse, &Cargo, 0);
	FUNC9(BToA0, Forward, &Cargo, 0);
	
	
    FUNC3(hProfile, icSigAToB0Tag, AToB0);
	FUNC3(hProfile, icSigBToA0Tag, BToA0);

	FUNC10(hProfile, icSigCmyData);
	FUNC11(hProfile, icSigOutputClass);

	FUNC3(hProfile, icSigProfileDescriptionTag, "CMY ");
    FUNC3(hProfile, icSigCopyrightTag,          "Copyright (c) HP, 2007. All rights reserved.");
    FUNC3(hProfile, icSigDeviceMfgDescTag,      "Little cms");    
    FUNC3(hProfile, icSigDeviceModelDescTag,    "CMY space");

	FUNC2(hProfile, "lcmscmy.icm");
	
	
	FUNC8(AToB0);
	FUNC8(BToA0);
	FUNC6(hProfile);	
	FUNC0(&Cargo);
	FUNC12(stderr, "Done.\n");



	return 0;
}