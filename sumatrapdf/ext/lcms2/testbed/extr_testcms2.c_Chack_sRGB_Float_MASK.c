#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INTENT_RELATIVE_COLORIMETRIC ; 
 scalar_t__ MaxErr ; 
 int /*<<< orphan*/  TYPE_Lab_DBL ; 
 int /*<<< orphan*/  TYPE_RGB_FLT ; 
 int /*<<< orphan*/  TYPE_XYZ_DBL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
cmsInt32Number FUNC8(void)
{
    cmsHPROFILE hsRGB, hXYZ, hLab;
    cmsHTRANSFORM xform1, xform2;
    cmsInt32Number rc;


    hsRGB = FUNC6(FUNC1());
    hXYZ  = FUNC5(FUNC1());
    hLab  = FUNC3(FUNC1(), NULL);

    xform1 =  FUNC4(FUNC1(), hsRGB, TYPE_RGB_FLT, hXYZ, TYPE_XYZ_DBL,
                                INTENT_RELATIVE_COLORIMETRIC, 0);

    xform2 =  FUNC4(FUNC1(), hsRGB, TYPE_RGB_FLT, hLab, TYPE_Lab_DBL,
                                INTENT_RELATIVE_COLORIMETRIC, 0);
    FUNC2(FUNC1(), hsRGB);
    FUNC2(FUNC1(), hXYZ);
    FUNC2(FUNC1(), hLab);

    MaxErr = 0;

    // Xform 1 goes from 8 bits to XYZ,
    rc  = FUNC0(xform1, 1, 1, 1,        0.0002927, 0.0003035,  0.000250,  0.0001);
    rc  &= FUNC0(xform1, 127, 127, 127, 0.2046329, 0.212230,   0.175069,  0.0001);
    rc  &= FUNC0(xform1, 12, 13, 15,    0.0038364, 0.0039928,  0.003853,  0.0001);
    rc  &= FUNC0(xform1, 128, 0, 0,     0.0941240, 0.0480256,  0.003005,  0.0001);
    rc  &= FUNC0(xform1, 190, 25, 210,  0.3204592, 0.1605926,  0.468213,  0.0001);

    // Xform 2 goes from 8 bits to Lab, we allow 0.01 error max
    rc  &= FUNC0(xform2, 1, 1, 1,       0.2741748, 0, 0,                   0.01);
    rc  &= FUNC0(xform2, 127, 127, 127, 53.192776, 0, 0,                   0.01);
    rc  &= FUNC0(xform2, 190, 25, 210,  47.052136, 74.565610, -56.883274,  0.01);
    rc  &= FUNC0(xform2, 128, 0, 0,     26.164701, 48.478171, 39.4384713,  0.01);

    FUNC7(FUNC1(), xform1);
    FUNC7(FUNC1(), xform2);
    return rc;
}