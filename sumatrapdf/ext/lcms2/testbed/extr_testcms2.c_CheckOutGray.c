
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ cmsUInt8Number ;
typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
struct TYPE_3__ {double L; scalar_t__ b; scalar_t__ a; } ;
typedef TYPE_1__ cmsCIELab ;


 int DbgThread () ;
 int IsGoodVal (char*,scalar_t__,double,double) ;
 int cmsDoTransform (int ,int ,TYPE_1__*,scalar_t__*,int) ;

__attribute__((used)) static
cmsInt32Number CheckOutGray(cmsHTRANSFORM xform, double L, cmsUInt8Number g)
{
    cmsCIELab Lab;
    cmsUInt8Number g_out;

    Lab.L = L;
    Lab.a = 0;
    Lab.b = 0;

    cmsDoTransform(DbgThread(), xform, &Lab, &g_out, 1);

    return IsGoodVal("Gray value", g, (double) g_out, 0.01);
}
