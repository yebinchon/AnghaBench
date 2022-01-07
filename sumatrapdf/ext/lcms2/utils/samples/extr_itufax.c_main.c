
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsHPROFILE ;
typedef char* LPLUT ;


 int GRID_POINTS ;
 int InputDirection ;
 int OutputDirection ;
 int cmsAddTag (int ,int ,char*) ;
 int cmsAlloc3DGrid (char*,int ,int,int) ;
 char* cmsAllocLUT () ;
 int cmsCloseProfile (int ) ;
 int cmsFreeLUT (char*) ;
 int cmsOpenProfileFromFile (char*,char*) ;
 int cmsSample3DGrid (char*,int ,int *,int ) ;
 int cmsSetColorSpace (int ,int ) ;
 int cmsSetDeviceClass (int ,int ) ;
 int cmsSetPCS (int ,int ) ;
 int fprintf (int ,char*) ;
 int icSigAToB0Tag ;
 int icSigBToA0Tag ;
 int icSigColorSpaceClass ;
 int icSigCopyrightTag ;
 int icSigDeviceMfgDescTag ;
 int icSigDeviceModelDescTag ;
 int icSigLabData ;
 int icSigProfileDescriptionTag ;
 int stderr ;
 int unlink (char*) ;

int main(int argc, char *argv[])
{
 LPLUT AToB0, BToA0;
 cmsHPROFILE hProfile;

 fprintf(stderr, "Creating itufax.icm...");

 unlink("itufax.icm");
 hProfile = cmsOpenProfileFromFile("itufax.icm", "w");

    AToB0 = cmsAllocLUT();
 BToA0 = cmsAllocLUT();

 cmsAlloc3DGrid(AToB0, GRID_POINTS, 3, 3);
 cmsAlloc3DGrid(BToA0, GRID_POINTS, 3, 3);

 cmsSample3DGrid(AToB0, InputDirection, ((void*)0), 0);
 cmsSample3DGrid(BToA0, OutputDirection, ((void*)0), 0);

    cmsAddTag(hProfile, icSigAToB0Tag, AToB0);
 cmsAddTag(hProfile, icSigBToA0Tag, BToA0);


 cmsSetColorSpace(hProfile, icSigLabData);
    cmsSetPCS(hProfile, icSigLabData);
    cmsSetDeviceClass(hProfile, icSigColorSpaceClass);

 cmsAddTag(hProfile, icSigProfileDescriptionTag, "ITU T.42/Fax JPEG CIEL*a*b*");
    cmsAddTag(hProfile, icSigCopyrightTag, "No Copyright, use freely.");
    cmsAddTag(hProfile, icSigDeviceMfgDescTag, "Little cms");
    cmsAddTag(hProfile, icSigDeviceModelDescTag, "ITU T.42/Fax JPEG CIEL*a*b*");

 cmsCloseProfile(hProfile);

 cmsFreeLUT(AToB0);
 cmsFreeLUT(BToA0);

 fprintf(stderr, "Done.\n");

 return 0;
}
