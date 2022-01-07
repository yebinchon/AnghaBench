
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef double cmsFloat64Number ;
struct TYPE_6__ {double L; double a; double b; } ;
typedef TYPE_1__ cmsCIELab ;


 int DbgThread () ;
 int Fail (char*,double,double,double,double,double,double,double) ;
 double MaxDE ;
 double cmsDeltaE (int ,TYPE_1__*,TYPE_1__*) ;
 int cmsDoTransform (int ,int ,TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static
cmsInt32Number CheckOneLab(cmsHTRANSFORM xform, cmsFloat64Number L, cmsFloat64Number a, cmsFloat64Number b)
{
    cmsCIELab In, Out;
    cmsFloat64Number dE;

    In.L = L; In.a = a; In.b = b;
    cmsDoTransform(DbgThread(), xform, &In, &Out, 1);

    dE = cmsDeltaE(DbgThread(), &In, &Out);

    if (dE > MaxDE) MaxDE = dE;

    if (MaxDE > 0.003) {
        Fail("dE=%f Lab1=(%f, %f, %f)\n\tLab2=(%f %f %f)", MaxDE, In.L, In.a, In.b, Out.L, Out.a, Out.b);
        cmsDoTransform(DbgThread(), xform, &In, &Out, 1);
        return 0;
    }

    return 1;
}
