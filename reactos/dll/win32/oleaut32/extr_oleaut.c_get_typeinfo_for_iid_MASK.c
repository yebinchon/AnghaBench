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
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__*,int /*<<< orphan*/ **) ; 
 int MAX_PATH ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC9(REFIID iid, ITypeInfo **typeinfo)
{
    WCHAR module[MAX_PATH];
    ITypeLib *typelib;
    HRESULT hr;

    *typeinfo = NULL;

    module[0] = 0;
    if (!FUNC6(iid, module, FUNC0(module)))
    {
        hr = FUNC8(iid, module, FUNC0(module));
        if (FUNC2(hr))
            return hr;
    }

    hr = FUNC5(module, &typelib);
    if (hr != S_OK) {
        FUNC1("Failed to load typelib for %s, but it should be there.\n", FUNC7(iid));
        return hr;
    }

    hr = FUNC3(typelib, iid, typeinfo);
    FUNC4(typelib);
    if (hr != S_OK)
        FUNC1("typelib does not contain info for %s\n", FUNC7(iid));

    return hr;
}