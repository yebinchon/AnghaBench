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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static
cmsInt32Number FUNC2(void)
{
    FUNC1("test5.icc", "sRGB_CSA.ps");
    FUNC1("aRGBlcms2.icc", "aRGB_CSA.ps");
    FUNC1("test4.icc", "sRGBV4_CSA.ps");
    FUNC1("test1.icc", "SWOP_CSA.ps");
    FUNC1(NULL, "Lab_CSA.ps");
    FUNC1("graylcms2.icc", "gray_CSA.ps");

    FUNC0("test5.icc", "sRGB_CRD.ps");
    FUNC0("aRGBlcms2.icc", "aRGB_CRD.ps");
    FUNC0(NULL, "Lab_CRD.ps");
    FUNC0("test1.icc", "SWOP_CRD.ps");
    FUNC0("test4.icc", "sRGBV4_CRD.ps");
    FUNC0("graylcms2.icc", "gray_CRD.ps");

    return 1;
}