
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsTagSignature ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;
typedef double cmsFloat64Number ;


 int DbgThread () ;
 int IsGoodFixed15_16 (char*,double,double) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsWriteTag (int ,int ,int ,double*) ;

__attribute__((used)) static
cmsInt32Number CheckCHAD(cmsInt32Number Pass, cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsFloat64Number *Pt;
    cmsFloat64Number CHAD[] = { 0, .1, .2, .3, .4, .5, .6, .7, .8 };
    cmsInt32Number i;

    switch (Pass) {

        case 1:
            return cmsWriteTag(DbgThread(), hProfile, tag, CHAD);


        case 2:
            Pt = (cmsFloat64Number *) cmsReadTag(DbgThread(), hProfile, tag);
            if (Pt == ((void*)0)) return 0;

            for (i=0; i < 9; i++) {
                if (!IsGoodFixed15_16("CHAD", Pt[i], CHAD[i])) return 0;
            }

            return 1;

        default:
            return 0;
    }
}
