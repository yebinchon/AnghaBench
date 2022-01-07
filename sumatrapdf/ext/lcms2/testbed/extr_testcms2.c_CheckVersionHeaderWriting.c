
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int test_versions ;
typedef int cmsInt32Number ;
typedef int * cmsHPROFILE ;


 int DbgThread () ;
 int Fail (char*,float,scalar_t__) ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsCreateProfilePlaceholder (int ) ;
 scalar_t__ cmsGetProfileVersion (int ,int *) ;
 int * cmsOpenProfileFromFile (int ,char*,char*) ;
 int cmsSaveProfileToFile (int ,int *,char*) ;
 int cmsSetProfileVersion (int ,int *,float) ;
 double fabs (scalar_t__) ;
 int remove (char*) ;

__attribute__((used)) static
cmsInt32Number CheckVersionHeaderWriting(void)
{
    cmsHPROFILE h;
    int index;
    float test_versions[] = {
      2.3f,
      4.08f,
      4.09f,
      4.3f
    };

    for (index = 0; index < sizeof(test_versions)/sizeof(test_versions[0]); index++) {

      h = cmsCreateProfilePlaceholder(DbgThread());
      if (h == ((void*)0)) return 0;

      cmsSetProfileVersion(DbgThread(), h, test_versions[index]);

      cmsSaveProfileToFile(DbgThread(), h, "versions.icc");
      cmsCloseProfile(DbgThread(), h);

      h = cmsOpenProfileFromFile(DbgThread(), "versions.icc", "r");


      if (fabs(cmsGetProfileVersion(DbgThread(), h) - test_versions[index]) > 0.005) {
        Fail("Version failed to round-trip: wrote %.2f, read %.2f",
             test_versions[index], cmsGetProfileVersion(DbgThread(), h));
        return 0;
      }

      cmsCloseProfile(DbgThread(), h);
      remove("versions.icc");
    }
    return 1;
}
