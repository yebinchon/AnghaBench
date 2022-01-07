
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ID8; } ;
typedef TYPE_1__ cmsProfileID ;
typedef scalar_t__ cmsHPROFILE ;
typedef int _cmsICCPROFILE ;
typedef int ProfileID2 ;
typedef int ProfileID1 ;


 int DbgThread () ;
 int cmsCloseProfile (int ,scalar_t__) ;
 int cmsGetHeaderProfileID (int ,scalar_t__,int ) ;
 scalar_t__ cmsMD5computeID (int ,scalar_t__) ;
 scalar_t__ cmsOpenProfileFromFile (int ,char*,char*) ;
 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static
int CheckMD5(void)
{
    _cmsICCPROFILE* h;
    cmsHPROFILE pProfile = cmsOpenProfileFromFile(DbgThread(), "sRGBlcms2.icc", "r");
    cmsProfileID ProfileID1, ProfileID2, ProfileID3, ProfileID4;

    h =(_cmsICCPROFILE*) pProfile;
    if (cmsMD5computeID(DbgThread(), pProfile)) cmsGetHeaderProfileID(DbgThread(), pProfile, ProfileID1.ID8);
    if (cmsMD5computeID(DbgThread(), pProfile)) cmsGetHeaderProfileID(DbgThread(), pProfile,ProfileID2.ID8);

    cmsCloseProfile(DbgThread(), pProfile);


    pProfile = cmsOpenProfileFromFile(DbgThread(), "sRGBlcms2.icc", "r");

    h =(_cmsICCPROFILE*) pProfile;
    if (cmsMD5computeID(DbgThread(), pProfile)) cmsGetHeaderProfileID(DbgThread(), pProfile, ProfileID3.ID8);
    if (cmsMD5computeID(DbgThread(), pProfile)) cmsGetHeaderProfileID(DbgThread(), pProfile,ProfileID4.ID8);

    cmsCloseProfile(DbgThread(), pProfile);

    return ((memcmp(ProfileID1.ID8, ProfileID3.ID8, sizeof(ProfileID1)) == 0) &&
            (memcmp(ProfileID2.ID8, ProfileID4.ID8, sizeof(ProfileID2)) == 0));
}
