
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsTagSignature ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;


 int DbgThread () ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsSigPerceptualReferenceMediumGamut ;
 int cmsWriteTag (int ,int ,int ,int *) ;

__attribute__((used)) static
cmsInt32Number CheckSignature(cmsInt32Number Pass, cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsTagSignature *Pt, Holder;

    switch (Pass) {

        case 1:
            Holder = (cmsTagSignature) cmsSigPerceptualReferenceMediumGamut;
            return cmsWriteTag(DbgThread(), hProfile, tag, &Holder);

        case 2:
            Pt = (cmsTagSignature *) cmsReadTag(DbgThread(), hProfile, tag);
            if (Pt == ((void*)0)) return 0;
            return *Pt == cmsSigPerceptualReferenceMediumGamut;

        default:
            return 0;
    }
}
