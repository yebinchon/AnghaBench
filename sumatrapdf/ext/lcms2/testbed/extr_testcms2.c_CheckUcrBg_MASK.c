#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  Desc; void* Ucr; void* Bg; } ;
typedef  TYPE_1__ cmsUcrBg ;
typedef  int /*<<< orphan*/  cmsTagSignature ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  cmsNoCountry ; 
 int /*<<< orphan*/  cmsNoLanguage ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static
cmsInt32Number FUNC10(cmsInt32Number Pass,  cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsUcrBg *Pt, m;
    cmsInt32Number rc;
    char Buffer[256];

    switch (Pass) {

        case 1:
            m.Ucr = FUNC1(FUNC0(), 2.4);
            m.Bg  = FUNC1(FUNC0(), -2.2);
            m.Desc = FUNC3(FUNC0(), 1);
            FUNC6(FUNC0(), m.Desc,  cmsNoLanguage, cmsNoCountry, "test UCR/BG");
            rc = FUNC8(FUNC0(), hProfile, tag, &m);
            FUNC4(FUNC0(), m.Desc);
            FUNC2(FUNC0(), m.Bg);
            FUNC2(FUNC0(), m.Ucr);
            return rc;


        case 2:
            Pt = (cmsUcrBg *) FUNC7(FUNC0(), hProfile, tag);
            if (Pt == NULL) return 0;

            FUNC5(FUNC0(), Pt ->Desc, cmsNoLanguage, cmsNoCountry, Buffer, 256);
            if (FUNC9(Buffer, "test UCR/BG") != 0) return 0;
            return 1;

        default:
            return 0;
    }
}