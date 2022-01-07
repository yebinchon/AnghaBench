
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt8Number ;
typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
struct TYPE_3__ {int L; int b; int a; } ;
typedef TYPE_1__ cmsCIELab ;


 int DbgThread () ;
 int IsGoodVal (char*,double,int ,double) ;
 int cmsDoTransform (int ,int ,int *,TYPE_1__*,int) ;

__attribute__((used)) static
cmsInt32Number CheckGray(cmsHTRANSFORM xform, cmsUInt8Number g, double L)
{
    cmsCIELab Lab;

    cmsDoTransform(DbgThread(), xform, &g, &Lab, 1);

    if (!IsGoodVal("a axis on gray", 0, Lab.a, 0.001)) return 0;
    if (!IsGoodVal("b axis on gray", 0, Lab.b, 0.001)) return 0;

    return IsGoodVal("Gray value", L, Lab.L, 0.01);
}
