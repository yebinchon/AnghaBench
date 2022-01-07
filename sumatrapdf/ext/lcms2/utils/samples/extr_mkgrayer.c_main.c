
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsHPROFILE ;
typedef char* LPLUT ;


 int Forward ;
 int cmsAddTag (int ,int ,char*) ;
 int cmsAlloc3DGrid (char*,int,int,int) ;
 char* cmsAllocLUT () ;
 int cmsCloseProfile (int ) ;
 int cmsFreeLUT (char*) ;
 int cmsOpenProfileFromFile (char*,char*) ;
 int cmsSample3DGrid (char*,int ,int *,int ) ;
 int cmsSetColorSpace (int ,int ) ;
 int cmsSetDeviceClass (int ,int ) ;
 int cmsSetPCS (int ,int ) ;
 int fprintf (int ,char*) ;
 int icSigBToA0Tag ;
 int icSigCopyrightTag ;
 int icSigDeviceMfgDescTag ;
 int icSigDeviceModelDescTag ;
 int icSigLabData ;
 int icSigOutputClass ;
 int icSigProfileDescriptionTag ;
 int icSigRgbData ;
 int stderr ;
 int unlink (char*) ;

int main(int argc, char *argv[])
{
 LPLUT BToA0;
 cmsHPROFILE hProfile;

 fprintf(stderr, "Creating interpol2.icc...");

 unlink("interpol2.icc");
 hProfile = cmsOpenProfileFromFile("interpol2.icc", "w8");


    BToA0 = cmsAllocLUT();

 cmsAlloc3DGrid(BToA0, 17, 3, 3);

 cmsSample3DGrid(BToA0, Forward, ((void*)0), 0);

    cmsAddTag(hProfile, icSigBToA0Tag, BToA0);

 cmsSetColorSpace(hProfile, icSigRgbData);
    cmsSetPCS(hProfile, icSigLabData);
    cmsSetDeviceClass(hProfile, icSigOutputClass);

 cmsAddTag(hProfile, icSigProfileDescriptionTag, "Interpolation test");
    cmsAddTag(hProfile, icSigCopyrightTag, "Copyright (c) HP 2007. All rights reserved.");
    cmsAddTag(hProfile, icSigDeviceMfgDescTag, "Little cms");
    cmsAddTag(hProfile, icSigDeviceModelDescTag, "Interpolation test profile");


 cmsCloseProfile(hProfile);

 cmsFreeLUT(BToA0);

 fprintf(stderr, "Done.\n");

 return 0;
}
