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
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsSigRgbData ; 

__attribute__((used)) static
cmsHPROFILE FUNC4(void)
{
    cmsToneCurve* Gamma = FUNC1(FUNC0(), 1.1);
    cmsToneCurve* Transfer[3];
    cmsHPROFILE h;

    Transfer[0] = Transfer[1] = Transfer[2] = Gamma;
    h = FUNC2(FUNC0(), cmsSigRgbData, Transfer);

    FUNC3(FUNC0(), Gamma);

    return h;
}