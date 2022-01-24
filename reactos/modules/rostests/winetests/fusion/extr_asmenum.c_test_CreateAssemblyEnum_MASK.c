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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IAssemblyName ;
typedef  int /*<<< orphan*/  IAssemblyEnum ;
typedef  int /*<<< orphan*/ * HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ASM_CACHE_GAC ; 
 int /*<<< orphan*/  ASM_CACHE_ROOT ; 
 int /*<<< orphan*/  CANOF_PARSE_DISPLAY_NAME ; 
 int /*<<< orphan*/ * E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/ * S_OK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    HRESULT hr;
    WCHAR namestr[MAX_PATH];
    IAssemblyEnum *asmenum;
    IAssemblyName *asmname;

    FUNC5(namestr, "wine");
    asmname = NULL;
    hr = FUNC4(&asmname, namestr, CANOF_PARSE_DISPLAY_NAME, NULL);
    FUNC2(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC2(asmname != NULL, "Expected non-NULL asmname\n");

    /* pEnum is NULL */
    if (0)
    {
        /* Crashes on .NET 1.x */
        hr = FUNC3(NULL, NULL, asmname, ASM_CACHE_GAC, NULL);
        FUNC2(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);
    }

    /* pName is NULL */
    asmenum = NULL;
    hr = FUNC3(&asmenum, NULL, NULL, ASM_CACHE_GAC, NULL);
    FUNC2(hr == S_OK, "Expected S_OK, got %08x\n", hr);
    FUNC2(asmenum != NULL, "Expected non-NULL asmenum\n");

    FUNC0(asmenum);

    /* dwFlags is ASM_CACHE_ROOT */
    asmenum = (IAssemblyEnum *)0xdeadbeef;
    hr = FUNC3(&asmenum, NULL, NULL, ASM_CACHE_ROOT, NULL);
    FUNC2(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);
    FUNC2(asmenum == (IAssemblyEnum *)0xdeadbeef,
       "Expected asmenum to be unchanged, got %p\n", asmenum);

    /* invalid dwFlags */
    asmenum = (IAssemblyEnum *)0xdeadbeef;
    hr = FUNC3(&asmenum, NULL, NULL, 0, NULL);
    FUNC2(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %08x\n", hr);
    FUNC2(asmenum == (IAssemblyEnum *)0xdeadbeef,
       "Expected asmenum to be unchanged, got %p\n", asmenum);

    FUNC1(asmname);
}