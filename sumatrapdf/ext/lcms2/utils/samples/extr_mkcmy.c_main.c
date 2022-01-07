
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsHPROFILE ;
typedef char* LPLUT ;
typedef int CARGO ;


 int Forward ;
 int FreeCargo (int *) ;
 int InitCargo (int *) ;
 int Reverse ;
 int _cmsSaveProfile (int ,char*) ;
 int cmsAddTag (int ,int ,char*) ;
 int cmsAlloc3DGrid (char*,int,int,int) ;
 char* cmsAllocLUT () ;
 int cmsCloseProfile (int ) ;
 int cmsCreateLabProfile (int *) ;
 int cmsFreeLUT (char*) ;
 int cmsSample3DGrid (char*,int ,int *,int ) ;
 int cmsSetColorSpace (int ,int ) ;
 int cmsSetDeviceClass (int ,int ) ;
 int fprintf (int ,char*) ;
 int icSigAToB0Tag ;
 int icSigBToA0Tag ;
 int icSigCmyData ;
 int icSigCopyrightTag ;
 int icSigDeviceMfgDescTag ;
 int icSigDeviceModelDescTag ;
 int icSigOutputClass ;
 int icSigProfileDescriptionTag ;
 int stderr ;

int main(void)
{
 LPLUT AToB0, BToA0;
 CARGO Cargo;
 cmsHPROFILE hProfile;

 fprintf(stderr, "Creating lcmscmy.icm...");

 InitCargo(&Cargo);

 hProfile = cmsCreateLabProfile(((void*)0));


    AToB0 = cmsAllocLUT();
 BToA0 = cmsAllocLUT();

 cmsAlloc3DGrid(AToB0, 25, 3, 3);
 cmsAlloc3DGrid(BToA0, 25, 3, 3);


 cmsSample3DGrid(AToB0, Reverse, &Cargo, 0);
 cmsSample3DGrid(BToA0, Forward, &Cargo, 0);


    cmsAddTag(hProfile, icSigAToB0Tag, AToB0);
 cmsAddTag(hProfile, icSigBToA0Tag, BToA0);

 cmsSetColorSpace(hProfile, icSigCmyData);
 cmsSetDeviceClass(hProfile, icSigOutputClass);

 cmsAddTag(hProfile, icSigProfileDescriptionTag, "CMY ");
    cmsAddTag(hProfile, icSigCopyrightTag, "Copyright (c) HP, 2007. All rights reserved.");
    cmsAddTag(hProfile, icSigDeviceMfgDescTag, "Little cms");
    cmsAddTag(hProfile, icSigDeviceModelDescTag, "CMY space");

 _cmsSaveProfile(hProfile, "lcmscmy.icm");


 cmsFreeLUT(AToB0);
 cmsFreeLUT(BToA0);
 cmsCloseProfile(hProfile);
 FreeCargo(&Cargo);
 fprintf(stderr, "Done.\n");



 return 0;
}
