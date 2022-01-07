
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsToneCurve ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;
typedef int cmsCIExyY ;


 int * cmsBuildGamma (int ,double) ;
 int cmsCreateGrayProfile (int ,int ,int *) ;
 int cmsCreateLab2Profile (int ,int *) ;
 int cmsCreateLab4Profile (int ,int *) ;
 int cmsCreateLinearizationDeviceLink (int ,int ,int **) ;
 int cmsCreateNULLProfile (int ) ;
 int cmsCreateXYZProfile (int ) ;
 int cmsCreate_sRGBProfile (int ) ;
 int cmsD50_xyY (int ) ;
 int cmsFreeToneCurve (int ,int *) ;
 int cmsOpenProfileFromFile (int ,char const*,char*) ;
 int cmsSigCmykData ;
 int cmsWhitePointFromTemp (int ,int *,int) ;
 scalar_t__ cmsstrcasecmp (char const*,char*) ;

cmsHPROFILE OpenStockProfile(cmsContext ContextID, const char* File)
{
       if (!File)
            return cmsCreate_sRGBProfile(ContextID);

       if (cmsstrcasecmp(File, "*Lab2") == 0)
                return cmsCreateLab2Profile(ContextID, ((void*)0));

       if (cmsstrcasecmp(File, "*Lab4") == 0)
                return cmsCreateLab4Profile(ContextID, ((void*)0));

       if (cmsstrcasecmp(File, "*Lab") == 0)
                return cmsCreateLab4Profile(ContextID, ((void*)0));

       if (cmsstrcasecmp(File, "*LabD65") == 0) {

           cmsCIExyY D65xyY;

           cmsWhitePointFromTemp(ContextID, &D65xyY, 6504);
           return cmsCreateLab4Profile(ContextID, &D65xyY);
       }

       if (cmsstrcasecmp(File, "*XYZ") == 0)
                return cmsCreateXYZProfile(ContextID);

       if (cmsstrcasecmp(File, "*Gray22") == 0) {

           cmsToneCurve* Curve = cmsBuildGamma(ContextID, 2.2);
           cmsHPROFILE hProfile = cmsCreateGrayProfile(ContextID, cmsD50_xyY(ContextID), Curve);
           cmsFreeToneCurve(ContextID, Curve);
           return hProfile;
       }

        if (cmsstrcasecmp(File, "*Gray30") == 0) {

           cmsToneCurve* Curve = cmsBuildGamma(ContextID, 3.0);
           cmsHPROFILE hProfile = cmsCreateGrayProfile(ContextID, cmsD50_xyY(ContextID), Curve);
           cmsFreeToneCurve(ContextID, Curve);
           return hProfile;
       }

       if (cmsstrcasecmp(File, "*srgb") == 0)
                return cmsCreate_sRGBProfile(ContextID);

       if (cmsstrcasecmp(File, "*null") == 0)
                return cmsCreateNULLProfile(ContextID);


       if (cmsstrcasecmp(File, "*Lin2222") == 0) {

            cmsToneCurve* Gamma = cmsBuildGamma(0, 2.2);
            cmsToneCurve* Gamma4[4];
            cmsHPROFILE hProfile;

            Gamma4[0] = Gamma4[1] = Gamma4[2] = Gamma4[3] = Gamma;
            hProfile = cmsCreateLinearizationDeviceLink(ContextID, cmsSigCmykData, Gamma4);
            cmsFreeToneCurve(ContextID, Gamma);
            return hProfile;
       }


        return cmsOpenProfileFromFile(ContextID, File, "r");
}
