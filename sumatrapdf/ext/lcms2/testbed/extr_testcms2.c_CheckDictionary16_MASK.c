#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
typedef  int /*<<< orphan*/ * cmsHANDLE ;
struct TYPE_5__ {int /*<<< orphan*/ * Value; int /*<<< orphan*/ * Name; } ;
typedef  TYPE_1__ cmsDICTentry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,TYPE_1__ const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsSigMetaTag ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static
cmsInt32Number FUNC9(cmsInt32Number Pass,  cmsHPROFILE hProfile)
{
      cmsHANDLE hDict;
      const cmsDICTentry* e;
      switch (Pass) {

        case 1:
            hDict = FUNC2(FUNC0());
            FUNC1(FUNC0(), hDict, L"Name0",  NULL, NULL, NULL);
            FUNC1(FUNC0(), hDict, L"Name1",  L"", NULL, NULL);
            FUNC1(FUNC0(), hDict, L"Name",  L"String", NULL, NULL);
            FUNC1(FUNC0(), hDict, L"Name2", L"12",    NULL, NULL);
            if (!FUNC7(FUNC0(), hProfile, cmsSigMetaTag, hDict)) return 0;
            FUNC3(FUNC0(), hDict);
            return 1;


        case 2:

             hDict = FUNC6(FUNC0(), hProfile, cmsSigMetaTag);
             if (hDict == NULL) return 0;
             e = FUNC4(FUNC0(), hDict);
             if (FUNC8(e ->Name, L"Name2", sizeof(wchar_t) * 5) != 0) return 0;
             if (FUNC8(e ->Value, L"12",  sizeof(wchar_t) * 2) != 0) return 0;
             e = FUNC5(FUNC0(), e);
             if (FUNC8(e ->Name, L"Name", sizeof(wchar_t) * 4) != 0) return 0;
             if (FUNC8(e ->Value, L"String",  sizeof(wchar_t) * 5) != 0) return 0;
             e = FUNC5(FUNC0(), e);
             if (FUNC8(e ->Name, L"Name1", sizeof(wchar_t) *5) != 0) return 0;
             if (e ->Value == NULL) return 0;
             if (*e->Value != 0) return 0;
             e = FUNC5(FUNC0(), e);
             if (FUNC8(e ->Name, L"Name0", sizeof(wchar_t) * 5) != 0) return 0;
             if (e ->Value != NULL) return 0;
             return 1;


        default:;
    }

    return 0;
}