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
 int /*<<< orphan*/  Forward ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  icSigBToA0Tag ; 
 int /*<<< orphan*/  icSigCopyrightTag ; 
 int /*<<< orphan*/  icSigDeviceMfgDescTag ; 
 int /*<<< orphan*/  icSigDeviceModelDescTag ; 
 int /*<<< orphan*/  icSigLabData ; 
 int /*<<< orphan*/  icSigOutputClass ; 
 int /*<<< orphan*/  icSigProfileDescriptionTag ; 
 int /*<<< orphan*/  icSigRgbData ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

int FUNC12(int argc, char *argv[])
{
	LPLUT BToA0;
	cmsHPROFILE hProfile;

	FUNC10(stderr, "Creating interpol2.icc...");

	FUNC11("interpol2.icc");
	hProfile = FUNC5("interpol2.icc", "w8");


    BToA0 = FUNC2();

	FUNC1(BToA0, 17, 3, 3);
	    
	FUNC6(BToA0, Forward, NULL, 0);
			
    FUNC0(hProfile, icSigBToA0Tag, BToA0);
	                                
	FUNC7(hProfile, icSigRgbData);
    FUNC9(hProfile, icSigLabData);
    FUNC8(hProfile, icSigOutputClass);

	FUNC0(hProfile, icSigProfileDescriptionTag, "Interpolation test");
    FUNC0(hProfile, icSigCopyrightTag,          "Copyright (c) HP 2007. All rights reserved.");
    FUNC0(hProfile, icSigDeviceMfgDescTag,      "Little cms");    
    FUNC0(hProfile, icSigDeviceModelDescTag,    "Interpolation test profile");

	
	FUNC3(hProfile);
    
	FUNC4(BToA0);
	
	FUNC10(stderr, "Done.\n");

	return 0;
}