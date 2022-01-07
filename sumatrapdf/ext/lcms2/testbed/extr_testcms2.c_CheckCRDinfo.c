
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsTagSignature ;
typedef int cmsMLU ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;


 int DbgThread () ;
 int * cmsMLUalloc (int ,int) ;
 int cmsMLUfree (int ,int *) ;
 int cmsMLUgetASCII (int ,int *,char*,char*,char*,int) ;
 int cmsMLUsetWide (int ,int *,char*,char*,char*) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsWriteTag (int ,int ,int ,int *) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static
cmsInt32Number CheckCRDinfo(cmsInt32Number Pass, cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsMLU *mlu;
    char Buffer[256];
    cmsInt32Number rc;

    switch (Pass) {

        case 1:
            mlu = cmsMLUalloc(DbgThread(), 5);

            cmsMLUsetWide(DbgThread(), mlu, "PS", "nm", L"test postscript");
            cmsMLUsetWide(DbgThread(), mlu, "PS", "#0", L"perceptual");
            cmsMLUsetWide(DbgThread(), mlu, "PS", "#1", L"relative_colorimetric");
            cmsMLUsetWide(DbgThread(), mlu, "PS", "#2", L"saturation");
            cmsMLUsetWide(DbgThread(), mlu, "PS", "#3", L"absolute_colorimetric");
            rc = cmsWriteTag(DbgThread(), hProfile, tag, mlu);
            cmsMLUfree(DbgThread(), mlu);
            return rc;


        case 2:
            mlu = (cmsMLU*) cmsReadTag(DbgThread(), hProfile, tag);
            if (mlu == ((void*)0)) return 0;



             cmsMLUgetASCII(DbgThread(), mlu, "PS", "nm", Buffer, 256);
             if (strcmp(Buffer, "test postscript") != 0) return 0;


             cmsMLUgetASCII(DbgThread(), mlu, "PS", "#0", Buffer, 256);
             if (strcmp(Buffer, "perceptual") != 0) return 0;


             cmsMLUgetASCII(DbgThread(), mlu, "PS", "#1", Buffer, 256);
             if (strcmp(Buffer, "relative_colorimetric") != 0) return 0;


             cmsMLUgetASCII(DbgThread(), mlu, "PS", "#2", Buffer, 256);
             if (strcmp(Buffer, "saturation") != 0) return 0;


             cmsMLUgetASCII(DbgThread(), mlu, "PS", "#3", Buffer, 256);
             if (strcmp(Buffer, "absolute_colorimetric") != 0) return 0;
             return 1;

        default:
            return 0;
    }
}
