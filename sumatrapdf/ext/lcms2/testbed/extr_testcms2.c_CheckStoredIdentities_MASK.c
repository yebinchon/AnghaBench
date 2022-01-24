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
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHTRANSFORM ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INTENT_RELATIVE_COLORIMETRIC ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TYPE_Lab_8 ; 
 int /*<<< orphan*/  TYPE_Lab_DBL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static
cmsInt32Number FUNC11(void)
{
    cmsHPROFILE hLab, hLink, h4, h2;
    cmsHTRANSFORM xform;
    cmsInt32Number rc = 1;

    hLab  = FUNC4(FUNC1(), NULL);
    xform = FUNC5(FUNC1(), hLab, TYPE_Lab_8, hLab, TYPE_Lab_8, 0, 0);

    hLink = FUNC9(NULL, xform, 3.4, 0);
    FUNC8(FUNC1(), hLink, "abstractv2.icc");
    FUNC3(FUNC1(), hLink);

    hLink = FUNC9(NULL, xform, 4.3, 0);
    FUNC8(FUNC1(), hLink, "abstractv4.icc");
    FUNC3(FUNC1(), hLink);

    FUNC6(FUNC1(), xform);
    FUNC3(FUNC1(), hLab);

    h4 = FUNC7(FUNC1(), "abstractv4.icc", "r");

    xform = FUNC5(FUNC1(), h4, TYPE_Lab_DBL, h4, TYPE_Lab_DBL, INTENT_RELATIVE_COLORIMETRIC, 0);

    FUNC2("V4");
    rc &= FUNC0(xform);

    FUNC6(FUNC1(), xform);
    FUNC3(FUNC1(), h4);
    if (!rc) goto Error;


    FUNC2("V2");
    h2 = FUNC7(FUNC1(), "abstractv2.icc", "r");

    xform = FUNC5(FUNC1(), h2, TYPE_Lab_DBL, h2, TYPE_Lab_DBL, INTENT_RELATIVE_COLORIMETRIC, 0);
    rc &= FUNC0(xform);
    FUNC6(FUNC1(), xform);
    FUNC3(FUNC1(), h2);
    if (!rc) goto Error;


    FUNC2("V2 -> V4");
    h2 = FUNC7(FUNC1(), "abstractv2.icc", "r");
    h4 = FUNC7(FUNC1(), "abstractv4.icc", "r");

    xform = FUNC5(FUNC1(), h4, TYPE_Lab_DBL, h2, TYPE_Lab_DBL, INTENT_RELATIVE_COLORIMETRIC, 0);
    rc &= FUNC0(xform);
    FUNC6(FUNC1(), xform);
    FUNC3(FUNC1(), h2);
    FUNC3(FUNC1(), h4);

    FUNC2("V4 -> V2");
    h2 = FUNC7(FUNC1(), "abstractv2.icc", "r");
    h4 = FUNC7(FUNC1(), "abstractv4.icc", "r");

    xform = FUNC5(FUNC1(), h2, TYPE_Lab_DBL, h4, TYPE_Lab_DBL, INTENT_RELATIVE_COLORIMETRIC, 0);
    rc &= FUNC0(xform);
    FUNC6(FUNC1(), xform);
    FUNC3(FUNC1(), h2);
    FUNC3(FUNC1(), h4);

Error:
    FUNC10("abstractv2.icc");
    FUNC10("abstractv4.icc");
    return rc;

}