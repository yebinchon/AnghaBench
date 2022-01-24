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
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsCIExyY ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,char*) ; 
 int /*<<< orphan*/  cmsSigCmykData ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 

__attribute__((used)) static
cmsHPROFILE FUNC13(const char* File)
{   

	cmsContext ContextID = 0;

	   if (!File) 
            return FUNC7(ContextID);    

       if (FUNC12(File, "*Lab2") == 0)
                return FUNC2(ContextID, NULL);

       if (FUNC12(File, "*Lab4") == 0)
                return FUNC3(ContextID, NULL);

       if (FUNC12(File, "*Lab") == 0)
                return FUNC3(ContextID, NULL);
       
       if (FUNC12(File, "*LabD65") == 0) {

           cmsCIExyY D65xyY;
           
           FUNC11( &D65xyY, 6504);           
           return FUNC3(ContextID, &D65xyY);
       }

       if (FUNC12(File, "*XYZ") == 0)
                return FUNC6(ContextID);

       if (FUNC12(File, "*Gray22") == 0) {

           cmsToneCurve* Curve = FUNC0(ContextID, 2.2);
           cmsHPROFILE hProfile = FUNC1(ContextID, FUNC8(), Curve);
           FUNC9(Curve);
           return hProfile;
       }

        if (FUNC12(File, "*Gray30") == 0) {

           cmsToneCurve* Curve = FUNC0(ContextID, 3.0);
           cmsHPROFILE hProfile = FUNC1(ContextID, FUNC8(), Curve);
           FUNC9(Curve);
           return hProfile;
       }

       if (FUNC12(File, "*srgb") == 0)
                return FUNC7(ContextID);

       if (FUNC12(File, "*null") == 0)
                return FUNC5(ContextID);

       
       if (FUNC12(File, "*Lin2222") == 0) {

            cmsToneCurve*  Gamma = FUNC0(0, 2.2);
            cmsToneCurve*  Gamma4[4];
            cmsHPROFILE hProfile; 

            Gamma4[0] = Gamma4[1] = Gamma4[2] = Gamma4[3] = Gamma;
            hProfile = FUNC4(cmsSigCmykData, Gamma4);
            FUNC9(Gamma);
            return hProfile;
       }

           
        return FUNC10(ContextID, File, "r");
}