
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Desc; void* Ucr; void* Bg; } ;
typedef TYPE_1__ cmsUcrBg ;
typedef int cmsTagSignature ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;


 int DbgThread () ;
 void* cmsBuildGamma (int ,double) ;
 int cmsFreeToneCurve (int ,void*) ;
 int cmsMLUalloc (int ,int) ;
 int cmsMLUfree (int ,int ) ;
 int cmsMLUgetASCII (int ,int ,int ,int ,char*,int) ;
 int cmsMLUsetASCII (int ,int ,int ,int ,char*) ;
 int cmsNoCountry ;
 int cmsNoLanguage ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsWriteTag (int ,int ,int ,TYPE_1__*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static
cmsInt32Number CheckUcrBg(cmsInt32Number Pass, cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsUcrBg *Pt, m;
    cmsInt32Number rc;
    char Buffer[256];

    switch (Pass) {

        case 1:
            m.Ucr = cmsBuildGamma(DbgThread(), 2.4);
            m.Bg = cmsBuildGamma(DbgThread(), -2.2);
            m.Desc = cmsMLUalloc(DbgThread(), 1);
            cmsMLUsetASCII(DbgThread(), m.Desc, cmsNoLanguage, cmsNoCountry, "test UCR/BG");
            rc = cmsWriteTag(DbgThread(), hProfile, tag, &m);
            cmsMLUfree(DbgThread(), m.Desc);
            cmsFreeToneCurve(DbgThread(), m.Bg);
            cmsFreeToneCurve(DbgThread(), m.Ucr);
            return rc;


        case 2:
            Pt = (cmsUcrBg *) cmsReadTag(DbgThread(), hProfile, tag);
            if (Pt == ((void*)0)) return 0;

            cmsMLUgetASCII(DbgThread(), Pt ->Desc, cmsNoLanguage, cmsNoCountry, Buffer, 256);
            if (strcmp(Buffer, "test UCR/BG") != 0) return 0;
            return 1;

        default:
            return 0;
    }
}
