
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsTagSignature ;
typedef int cmsInt32Number ;
typedef int cmsHPROFILE ;
struct TYPE_3__ {double X; double Y; double Z; } ;
typedef TYPE_1__ cmsCIEXYZ ;


 int DbgThread () ;
 int IsGoodFixed15_16 (char*,double,double) ;
 scalar_t__ cmsReadTag (int ,int ,int ) ;
 int cmsWriteTag (int ,int ,int ,TYPE_1__*) ;

__attribute__((used)) static
cmsInt32Number CheckXYZ(cmsInt32Number Pass, cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsCIEXYZ XYZ, *Pt;


    switch (Pass) {

        case 1:

            XYZ.X = 1.0; XYZ.Y = 1.1; XYZ.Z = 1.2;
            return cmsWriteTag(DbgThread(), hProfile, tag, &XYZ);

        case 2:
            Pt = (cmsCIEXYZ *) cmsReadTag(DbgThread(), hProfile, tag);
            if (Pt == ((void*)0)) return 0;
            return IsGoodFixed15_16("X", 1.0, Pt ->X) &&
                   IsGoodFixed15_16("Y", 1.1, Pt->Y) &&
                   IsGoodFixed15_16("Z", 1.2, Pt -> Z);

        default:
            return 0;
    }
}
