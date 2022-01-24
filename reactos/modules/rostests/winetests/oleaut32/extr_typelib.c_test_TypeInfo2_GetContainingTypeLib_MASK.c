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
typedef  char WCHAR ;
typedef  int UINT ;
typedef  char OLECHAR ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ITypeInfo2 ;
typedef  int /*<<< orphan*/  ICreateTypeLib2 ;
typedef  int /*<<< orphan*/  ICreateTypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_ITypeInfo2 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_WIN32 ; 
 int /*<<< orphan*/  TKIND_DISPATCH ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*)) ; 

__attribute__((used)) static void FUNC11(void)
{
    static const WCHAR test[] = {'t','e','s','t','.','t','l','b',0};
    static OLECHAR testTI[] = {'t','e','s','t','T','y','p','e','I','n','f','o',0};

    ICreateTypeLib2 *ctl2;
    ICreateTypeInfo *cti;
    ITypeInfo2 *ti2;
    ITypeLib *tl;
    UINT Index;
    HRESULT hr;

    hr = FUNC0(&SYS_WIN32, test, ctl2);
    FUNC10(hr, CreateTypeLib2);

    hr = FUNC4(ctl2, testTI, &TKIND_DISPATCH, &cti);
    FUNC10(hr, ICreateTypeLib2_CreateTypeInfo);

    hr = FUNC2(cti, &IID_ITypeInfo2, (void**)&ti2);
    FUNC10(hr, ICreateTypeInfo2_QueryInterface);

    tl = NULL;
    Index = 888;
    hr = FUNC6(ti2, &tl, &Index);
    FUNC10(hr, ITypeInfo2_GetContainingTypeLib);
    FUNC9(tl != NULL, "ITypeInfo2_GetContainingTypeLib returned empty TypeLib\n");
    FUNC9(Index == 0, "ITypeInfo2_GetContainingTypeLib returned Index = %u, expected 0\n", Index);
    if(tl) FUNC8(tl);

    tl = NULL;
    hr = FUNC6(ti2, &tl, NULL);
    FUNC10(hr, ITypeInfo2_GetContainingTypeLib);
    FUNC9(tl != NULL, "ITypeInfo2_GetContainingTypeLib returned empty TypeLib\n");
    if(tl) FUNC8(tl);

    Index = 888;
    hr = FUNC6(ti2, NULL, &Index);
    FUNC10(hr, ITypeInfo2_GetContainingTypeLib);
    FUNC9(Index == 0, "ITypeInfo2_GetContainingTypeLib returned Index = %u, expected 0\n", Index);

    hr = FUNC6(ti2, NULL, NULL);
    FUNC10(hr, ITypeInfo2_GetContainingTypeLib);

    FUNC7(ti2);
    FUNC3(cti);
    FUNC5(ctl2);
}