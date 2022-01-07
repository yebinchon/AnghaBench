
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * cmsHPROFILE ;
typedef int cmsFloat64Number ;


 int PrintUsage () ;
 int atof (char*) ;
 int cmsCloseProfile (int *) ;
 int * cmsOpenProfileFromFile (char*,char*) ;
 int cmsSaveProfileToFile (int *,char*) ;
 int cmsSetProfileVersion (int *,int ) ;
 int fprintf (int ,char*,...) ;
 int remove (char*) ;
 int rename (char*,char*) ;
 int stderr ;
 scalar_t__ strncmp (char*,char*,int) ;

int main(int argc, char *argv[])
{
       cmsHPROFILE hProfile;
    char* ptr;
    cmsFloat64Number Version;

    if (argc != 3) return PrintUsage();

    ptr = argv[1];
    if (strncmp(ptr, "--r", 3) != 0) return PrintUsage();
    ptr += 3;
    if (!*ptr) { fprintf(stderr, "Wrong version number\n"); return 1; }

    Version = atof(ptr);

    hProfile = cmsOpenProfileFromFile(argv[2], "r");
    if (hProfile == ((void*)0)) { fprintf(stderr, "'%s': cannot open\n", argv[2]); return 1; }

    cmsSetProfileVersion(hProfile, Version);
    cmsSaveProfileToFile(hProfile, "$$tmp.icc");
    cmsCloseProfile(hProfile);

    remove(argv[2]);
    rename("$$tmp.icc", argv[2]);
    return 0;


}
