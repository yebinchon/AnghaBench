
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cmsFloat64Number ;
typedef int cmsContext ;
struct TYPE_4__ {double L; double a; double b; double X; double Y; double Z; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ cmsCIEXYZ ;
typedef TYPE_1__ cmsCIELab ;


 int Verbose ;
 int cmsDoTransform (int ,scalar_t__,int *,TYPE_1__*,int) ;
 scalar_t__ hTransLab ;
 scalar_t__ hTransXYZ ;
 int printf (char*,double,double,double,double,double,double) ;

__attribute__((used)) static
void PrintPCSFloat(cmsContext ContextID, cmsFloat64Number Input[])
{
    if (Verbose > 1 && hTransXYZ && hTransLab) {

        cmsCIEXYZ XYZ = { 0, 0, 0 };
        cmsCIELab Lab = { 0, 0, 0 };

        if (hTransXYZ) cmsDoTransform(ContextID, hTransXYZ, Input, &XYZ, 1);
        if (hTransLab) cmsDoTransform(ContextID, hTransLab, Input, &Lab, 1);

        printf("[PCS] Lab=(%.4f,%.4f,%.4f) XYZ=(%.4f,%.4f,%.4f)\n", Lab.L, Lab.a, Lab.b,
            XYZ.X * 100.0, XYZ.Y * 100.0, XYZ.Z * 100.0);

    }
}
