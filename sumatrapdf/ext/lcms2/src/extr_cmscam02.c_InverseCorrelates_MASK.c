#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  double cmsFloat64Number ;
struct TYPE_7__ {double A; } ;
struct TYPE_8__ {double n; double Nc; double Ncb; double c; double z; double Nbb; TYPE_1__ adoptedWhite; } ;
typedef  TYPE_2__ cmsCIECAM02 ;
struct TYPE_9__ {double C; double J; double h; double A; double b; double a; double* RGBpa; } ;
typedef  TYPE_3__ CAM02COLOR ;

/* Variables and functions */
 double FUNC0 (double) ; 
 scalar_t__ FUNC1 (double) ; 
 double FUNC2 (double,double) ; 
 double FUNC3 (double) ; 

__attribute__((used)) static
CAM02COLOR FUNC4(CAM02COLOR clr, cmsCIECAM02* pMod)
{

    cmsFloat64Number t, e, p1, p2, p3, p4, p5, hr, d2r;
    d2r = 3.141592654 / 180.0;

    t = FUNC2( (clr.C / (FUNC2((clr.J / 100.0), 0.5) *
        (FUNC2((1.64 - FUNC2(0.29, pMod->n)), 0.73)))),
        (1.0 / 0.9) );
    e = ((12500.0 / 13.0) * pMod->Nc * pMod->Ncb) *
        (FUNC0((clr.h * d2r + 2.0)) + 3.8);

    clr.A = pMod->adoptedWhite.A * FUNC2(
           (clr.J / 100.0),
           (1.0 / (pMod->c * pMod->z)));

    p1 = e / t;
    p2 = (clr.A / pMod->Nbb) + 0.305;
    p3 = 21.0 / 20.0;

    hr = clr.h * d2r;

    if (FUNC1(FUNC3(hr)) >= FUNC1(FUNC0(hr))) {
        p4 = p1 / FUNC3(hr);
        clr.b = (p2 * (2.0 + p3) * (460.0 / 1403.0)) /
            (p4 + (2.0 + p3) * (220.0 / 1403.0) *
            (FUNC0(hr) / FUNC3(hr)) - (27.0 / 1403.0) +
            p3 * (6300.0 / 1403.0));
        clr.a = clr.b * (FUNC0(hr) / FUNC3(hr));
    }
    else {
        p5 = p1 / FUNC0(hr);
        clr.a = (p2 * (2.0 + p3) * (460.0 / 1403.0)) /
            (p5 + (2.0 + p3) * (220.0 / 1403.0) -
            ((27.0 / 1403.0) - p3 * (6300.0 / 1403.0)) *
            (FUNC3(hr) / FUNC0(hr)));
        clr.b = clr.a * (FUNC3(hr) / FUNC0(hr));
    }

    clr.RGBpa[0] = ((460.0 / 1403.0) * p2) +
              ((451.0 / 1403.0) * clr.a) +
              ((288.0 / 1403.0) * clr.b);
    clr.RGBpa[1] = ((460.0 / 1403.0) * p2) -
              ((891.0 / 1403.0) * clr.a) -
              ((261.0 / 1403.0) * clr.b);
    clr.RGBpa[2] = ((460.0 / 1403.0) * p2) -
              ((220.0 / 1403.0) * clr.a) -
              ((6300.0 / 1403.0) * clr.b);

    return clr;
}