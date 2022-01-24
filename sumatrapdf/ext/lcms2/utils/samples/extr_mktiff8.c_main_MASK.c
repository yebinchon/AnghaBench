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
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsAT_BEGIN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  cmsSigAToB0Tag ; 
 int /*<<< orphan*/  cmsSigLabData ; 
 int /*<<< orphan*/  cmsSigLinkClass ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC17(int argc, char *argv[])
{
	cmsHPROFILE hProfile;
	cmsPipeline *AToB0;
	cmsToneCurve* PreLinear[3];
	cmsToneCurve *Lin, *Step;

	FUNC15(stderr, "Creating lcmstiff8.icm...");
    
    FUNC16("lcmstiff8.icm");
	hProfile = FUNC5("lcmstiff8.icm", "w");

	// Create linearization
	Lin  = FUNC0();
	Step = FUNC1();

	PreLinear[0] = Lin;
	PreLinear[1] = Step;
	PreLinear[2] = Step;

    AToB0 = FUNC6(0, 3, 3);

	FUNC8(AToB0, 
		cmsAT_BEGIN, FUNC13(0, 3, PreLinear));

	FUNC9(hProfile, cmsSigLabData);
	FUNC11(hProfile, cmsSigLabData);
	FUNC10(hProfile, cmsSigLinkClass);
	FUNC12(hProfile, 4.2);

    FUNC14(hProfile, cmsSigAToB0Tag, AToB0);
	
    FUNC2(hProfile);

	FUNC3(hProfile);

	FUNC4(Lin);
	FUNC4(Step);
	FUNC7(AToB0);
		
	FUNC15(stderr, "Done.\n");

	return 0;
}