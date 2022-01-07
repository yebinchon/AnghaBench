
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int * cmsHTRANSFORM ;
typedef int * cmsHPROFILE ;


 int DbgThread () ;
 int INTENT_PERCEPTUAL ;
 int TYPE_BGR_8 ;
 int TYPE_CMYK_8 ;
 int TYPE_Lab_8 ;
 int TYPE_RGB_8 ;
 int cmsCloseProfile (int ,int *) ;
 int * cmsCreateTransform (int ,int *,int ,int *,int ,int,int ) ;
 int * cmsCreate_sRGBProfile (int ) ;
 int cmsDeleteTransform (int ,int *) ;
 int * cmsOpenProfileFromFile (int ,char*,char*) ;

__attribute__((used)) static
cmsInt32Number CheckBadTransforms(void)
{
    cmsHPROFILE h1 = cmsCreate_sRGBProfile(DbgThread());
    cmsHTRANSFORM x1;

    x1 = cmsCreateTransform(DbgThread(), ((void*)0), 0, ((void*)0), 0, 0, 0);
    if (x1 != ((void*)0)) {
        cmsDeleteTransform(DbgThread(), x1);
        return 0;
    }



    x1 = cmsCreateTransform(DbgThread(), h1, TYPE_RGB_8, h1, TYPE_RGB_8, 12345, 0);
    if (x1 != ((void*)0)) {
        cmsDeleteTransform(DbgThread(), x1);
        return 0;
    }

    x1 = cmsCreateTransform(DbgThread(), h1, TYPE_CMYK_8, h1, TYPE_RGB_8, 0, 0);
    if (x1 != ((void*)0)) {
        cmsDeleteTransform(DbgThread(), x1);
        return 0;
    }

    x1 = cmsCreateTransform(DbgThread(), h1, TYPE_RGB_8, h1, TYPE_CMYK_8, 1, 0);
    if (x1 != ((void*)0)) {
        cmsDeleteTransform(DbgThread(), x1);
        return 0;
    }


    x1 = cmsCreateTransform(DbgThread(), h1, TYPE_RGB_8, ((void*)0), TYPE_Lab_8, 1, 0);
    if (x1 != ((void*)0)) {
        cmsDeleteTransform(DbgThread(), x1);
        return 0;
    }

    cmsCloseProfile(DbgThread(), h1);


    {

    cmsHPROFILE hp1 = cmsOpenProfileFromFile(DbgThread(), "test1.icc", "r");
    cmsHPROFILE hp2 = cmsCreate_sRGBProfile(DbgThread());

    x1 = cmsCreateTransform(DbgThread(), hp1, TYPE_BGR_8, hp2, TYPE_BGR_8, INTENT_PERCEPTUAL, 0);

    cmsCloseProfile(DbgThread(), hp1); cmsCloseProfile(DbgThread(), hp2);
    if (x1 != ((void*)0)) {
        cmsDeleteTransform(DbgThread(), x1);
        return 0;
    }
    }

    return 1;

}
