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
typedef  int /*<<< orphan*/ * cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,double,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsSigCmykData ; 

__attribute__((used)) static
cmsInt32Number FUNC15(void)
{
    cmsHPROFILE h;

    h = FUNC14(FUNC6());
    if (!FUNC7(h, "sRGB profile", "sRGBlcms2.icc")) return 0;

    // ----

    h = FUNC1();
    if (!FUNC7(h, "aRGB profile", "aRGBlcms2.icc")) return 0;

    // ----

    h = FUNC3();
    if (!FUNC7(h, "Gray profile", "graylcms2.icc")) return 0;

    // ----

    h = FUNC4();
    if (!FUNC7(h, "Gray 3.0 profile", "gray3lcms2.icc")) return 0;

    // ----

    h = FUNC5();
    if (!FUNC7(h, "Gray Lab profile", "glablcms2.icc")) return 0;

    // ----

    h = FUNC2();
    if (!FUNC7(h, "Linearization profile", "linlcms2.icc")) return 0;

    // -------
    h = FUNC9(FUNC6(), cmsSigCmykData, 150);
    if (h == NULL) return 0;
    if (!FUNC7(h, "Ink-limiting profile", "limitlcms2.icc")) return 0;

    // ------

    h = FUNC10(FUNC6(), NULL);
    if (!FUNC7(h, "Lab 2 identity profile", "labv2lcms2.icc")) return 0;

    // ----

    h = FUNC11(FUNC6(), NULL);
    if (!FUNC7(h, "Lab 4 identity profile", "labv4lcms2.icc")) return 0;

    // ----

    h = FUNC13(FUNC6());
    if (!FUNC7(h, "XYZ identity profile", "xyzlcms2.icc")) return 0;

    // ----

    h = FUNC12(FUNC6());
    if (!FUNC7(h, "NULL profile", "nullcms2.icc")) return 0;

    // ---

    h = FUNC8(FUNC6(), 17, 0, 0, 0, 0, 5000, 6000);
    if (!FUNC7(h, "BCHS profile", "bchslcms2.icc")) return 0;

    // ---

    h = FUNC0(300, FALSE);
    if (!FUNC7(h, "Fake CMYK profile", "lcms2cmyk.icc")) return 0;

    // ---

    h = FUNC8(FUNC6(), 17, 0, 1.2, 0, 3, 5000, 5000);
    if (!FUNC7(h, "Brightness", "brightness.icc")) return 0;
    return 1;
}