
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsMLU ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;


 int DbgThread () ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreate_sRGBProfile (int *) ;
 int * cmsMLUalloc (int *,int) ;
 int cmsMLUfree (int ,int *) ;
 int cmsMLUsetASCII (int ,int *,char*,char*,char*) ;
 int cmsSigDeviceMfgDescTag ;
 int cmsWriteTag (int ,int ,int ,int *) ;

__attribute__((used)) static
cmsInt32Number CheckRemoveTag(void)
{
    cmsHPROFILE p;
    cmsMLU *mlu;
    int ret;

    p = cmsCreate_sRGBProfile(((void*)0));


    mlu = cmsMLUalloc (((void*)0), 1);
    ret = cmsMLUsetASCII(DbgThread(), mlu, "en", "US", "bar");
    if (!ret) return 0;

    ret = cmsWriteTag(DbgThread(), p, cmsSigDeviceMfgDescTag, mlu);
    if (!ret) return 0;

    cmsMLUfree(DbgThread(), mlu);


    ret = cmsWriteTag(DbgThread(), p, cmsSigDeviceMfgDescTag, ((void*)0));
    if (!ret) return 0;


    cmsCloseProfile(DbgThread(), p);
    return 1;
}
