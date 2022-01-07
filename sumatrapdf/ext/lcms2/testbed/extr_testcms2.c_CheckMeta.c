
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt32Number ;
typedef int cmsInt32Number ;
typedef int * cmsHPROFILE ;
typedef int * cmsHANDLE ;
typedef int FILE ;


 int DbgThread () ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsOpenProfileFromFile (int ,char*,char*) ;
 int * cmsReadTag (int ,int *,int ) ;
 int cmsSaveProfileToMem (int ,int *,char*,int *) ;
 int cmsSigMetaTag ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int fwrite (char*,int,int ,int *) ;
 scalar_t__ malloc (int ) ;

__attribute__((used)) static
cmsInt32Number CheckMeta(void)
{
    char *data;
    cmsHANDLE dict;
    cmsHPROFILE p;
    cmsUInt32Number clen;
    FILE *fp;
    int rc;


    p = cmsOpenProfileFromFile(DbgThread(), "ibm-t61.icc", "r");
    if (p == ((void*)0)) return 0;



    dict = cmsReadTag(DbgThread(), p, cmsSigMetaTag);
    if (dict == ((void*)0)) return 0;


    rc = cmsSaveProfileToMem(DbgThread(), p, ((void*)0), &clen);
    if (!rc) return 0;

    data = (char*) malloc(clen);
    rc = cmsSaveProfileToMem(DbgThread(), p, data, &clen);
    if (!rc) return 0;



    fp = fopen("new.icc", "wb");
    fwrite(data, 1, clen, fp);
    fclose(fp);
    free(data);

    cmsCloseProfile(DbgThread(), p);


    p = cmsOpenProfileFromFile(DbgThread(), "new.icc", "r");



    dict = cmsReadTag(DbgThread(), p, cmsSigMetaTag);
   if (dict == ((void*)0)) return 0;

   cmsCloseProfile(DbgThread(), p);
    return 1;
}
