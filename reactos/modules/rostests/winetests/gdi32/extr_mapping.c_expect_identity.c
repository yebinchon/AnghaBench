
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double eM11; double eM12; double eM21; double eM22; double eDx; double eDy; } ;
typedef TYPE_1__ XFORM ;


 int ok (int,char*,int,double) ;

__attribute__((used)) static inline void expect_identity(int line, XFORM *xf)
{
    ok(xf->eM11 == 1.0, "%d: got %f\n", line, xf->eM11);
    ok(xf->eM12 == 0.0, "%d: got %f\n", line, xf->eM12);
    ok(xf->eM21 == 0.0, "%d: got %f\n", line, xf->eM21);
    ok(xf->eM22 == 1.0, "%d: got %f\n", line, xf->eM22);
    ok(xf->eDx == 0.0, "%d: got %f\n", line, xf->eDx);
    ok(xf->eDy == 0.0, "%d: got %f\n", line, xf->eDy);
}
