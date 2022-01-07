
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;
typedef int cmsCIExyY ;


 int * cmsBuildGamma (int ,double) ;
 int cmsCreateGrayProfileTHR (int ,int ,int *) ;
 int cmsCreateLab2ProfileTHR (int ,int *) ;
 int cmsCreateLab4ProfileTHR (int ,int *) ;
 int cmsCreateLinearizationDeviceLink (int ,int **) ;
 int cmsCreateNULLProfileTHR (int ) ;
 int cmsCreateXYZProfileTHR (int ) ;
 int cmsCreate_sRGBProfileTHR (int ) ;
 int cmsD50_xyY () ;
 int cmsFreeToneCurve (int *) ;
 int cmsOpenProfileFromFileTHR (int ,char const*,char*) ;
 int cmsSigCmykData ;
 int cmsWhitePointFromTemp (int *,int) ;
 scalar_t__ cmsstrcasecmp (char const*,char*) ;

__attribute__((used)) static
cmsHPROFILE OpenProfile(const char* File)
{

 cmsContext ContextID = 0;

    if (!File)
            return cmsCreate_sRGBProfileTHR(ContextID);

       if (cmsstrcasecmp(File, "*Lab2") == 0)
                return cmsCreateLab2ProfileTHR(ContextID, ((void*)0));

       if (cmsstrcasecmp(File, "*Lab4") == 0)
                return cmsCreateLab4ProfileTHR(ContextID, ((void*)0));

       if (cmsstrcasecmp(File, "*Lab") == 0)
                return cmsCreateLab4ProfileTHR(ContextID, ((void*)0));

       if (cmsstrcasecmp(File, "*LabD65") == 0) {

           cmsCIExyY D65xyY;

           cmsWhitePointFromTemp( &D65xyY, 6504);
           return cmsCreateLab4ProfileTHR(ContextID, &D65xyY);
       }

       if (cmsstrcasecmp(File, "*XYZ") == 0)
                return cmsCreateXYZProfileTHR(ContextID);

       if (cmsstrcasecmp(File, "*Gray22") == 0) {

           cmsToneCurve* Curve = cmsBuildGamma(ContextID, 2.2);
           cmsHPROFILE hProfile = cmsCreateGrayProfileTHR(ContextID, cmsD50_xyY(), Curve);
           cmsFreeToneCurve(Curve);
           return hProfile;
       }

        if (cmsstrcasecmp(File, "*Gray30") == 0) {

           cmsToneCurve* Curve = cmsBuildGamma(ContextID, 3.0);
           cmsHPROFILE hProfile = cmsCreateGrayProfileTHR(ContextID, cmsD50_xyY(), Curve);
           cmsFreeToneCurve(Curve);
           return hProfile;
       }

       if (cmsstrcasecmp(File, "*srgb") == 0)
                return cmsCreate_sRGBProfileTHR(ContextID);

       if (cmsstrcasecmp(File, "*null") == 0)
                return cmsCreateNULLProfileTHR(ContextID);


       if (cmsstrcasecmp(File, "*Lin2222") == 0) {

            cmsToneCurve* Gamma = cmsBuildGamma(0, 2.2);
            cmsToneCurve* Gamma4[4];
            cmsHPROFILE hProfile;

            Gamma4[0] = Gamma4[1] = Gamma4[2] = Gamma4[3] = Gamma;
            hProfile = cmsCreateLinearizationDeviceLink(cmsSigCmykData, Gamma4);
            cmsFreeToneCurve(Gamma);
            return hProfile;
       }


        return cmsOpenProfileFromFileTHR(ContextID, File, "r");
}
