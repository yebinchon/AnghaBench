
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * cmsHPROFILE ;
typedef int cmsCIEXYZ ;


 int HandleSwitches (int,char**) ;
 int Help () ;
 int InitUtils (char*) ;
 int ShowWhitePoint (int *) ;
 int cmsCloseProfile (int *) ;
 int * cmsOpenProfileFromFile (char*,char*) ;
 int * cmsReadTag (int *,int ) ;
 int cmsSigMediaWhitePointTag ;
 int xoptind ;

int main(int argc, char *argv[])
{
       int nargs;

       InitUtils("wtpt");

       HandleSwitches(argc, argv);

       nargs = (argc - xoptind);

       if (nargs != 1)
              Help();

       else {
              cmsCIEXYZ* WtPt;
              cmsHPROFILE hProfile = cmsOpenProfileFromFile(argv[xoptind], "r");
              if (hProfile == ((void*)0)) return 1;

              WtPt = cmsReadTag(hProfile, cmsSigMediaWhitePointTag);
              ShowWhitePoint(WtPt);
              cmsCloseProfile(hProfile);
       }

       return 0;
}
