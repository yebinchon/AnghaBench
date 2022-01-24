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
typedef  int /*<<< orphan*/  cmsTagSignature ;
typedef  int /*<<< orphan*/  cmsMLU ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,char*) ; 
 char* cmsNoCountry ; 
 char* cmsNoLanguage ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static
cmsInt32Number FUNC8(cmsInt32Number Pass, cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsMLU *m, *Pt;
    cmsInt32Number rc;
    char Buffer[256];


    switch (Pass) {

        case 1:
            m = FUNC1(FUNC0(), 0);
            FUNC4(FUNC0(), m, cmsNoLanguage, cmsNoCountry, "Test test");
            FUNC4(FUNC0(), m, "en",  "US",  "1 1 1 1");
            FUNC4(FUNC0(), m, "es",  "ES",  "2 2 2 2");
            FUNC4(FUNC0(), m, "ct",  "ES",  "3 3 3 3");
            FUNC4(FUNC0(), m, "en",  "GB",  "444444444");
            rc = FUNC6(FUNC0(), hProfile, tag, m);
            FUNC2(FUNC0(), m);
            return rc;

        case 2:
            Pt = (cmsMLU *) FUNC5(FUNC0(), hProfile, tag);
            if (Pt == NULL) return 0;
            FUNC3(FUNC0(), Pt, cmsNoLanguage, cmsNoCountry, Buffer, 256);
            if (FUNC7(Buffer, "Test test") != 0) return FALSE;
            FUNC3(FUNC0(), Pt, "en", "US", Buffer, 256);
            if (FUNC7(Buffer, "1 1 1 1") != 0) return FALSE;
            FUNC3(FUNC0(), Pt, "es", "ES", Buffer, 256);
            if (FUNC7(Buffer, "2 2 2 2") != 0) return FALSE;
            FUNC3(FUNC0(), Pt, "ct", "ES", Buffer, 256);
            if (FUNC7(Buffer, "3 3 3 3") != 0) return FALSE;
            FUNC3(FUNC0(), Pt, "en", "GB",  Buffer, 256);
            if (FUNC7(Buffer, "444444444") != 0) return FALSE;
            return TRUE;

        default:
            return 0;
    }
}