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
typedef  size_t tid_t ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LIBID_WindowsInstaller ; 
 int /*<<< orphan*/  LOCALE_NEUTRAL ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (size_t) ; 
 int /*<<< orphan*/ ** typeinfos ; 
 int /*<<< orphan*/  typelib ; 

HRESULT FUNC10(tid_t tid, ITypeInfo **typeinfo)
{
    HRESULT hr;

    if (!typelib)
    {
        ITypeLib *lib;

        hr = FUNC6(&LIBID_WindowsInstaller, 1, 0, LOCALE_NEUTRAL, &lib);
        if (FUNC1(hr)) {
            static const WCHAR msiserverW[] = {'m','s','i','s','e','r','v','e','r','.','t','l','b',0};
            hr = FUNC7(msiserverW, &lib);
            if (FUNC1(hr)) {
                FUNC0("Could not load msiserver.tlb\n");
                return hr;
            }
        }

        if (FUNC5((void**)&typelib, lib, NULL))
            FUNC4(lib);
    }

    if (!typeinfos[tid])
    {
        ITypeInfo *ti;

        hr = FUNC3(typelib, FUNC9(tid), &ti);
        if (FUNC1(hr)) {
            FUNC0("Could not load ITypeInfo for %s\n", FUNC8(FUNC9(tid)));
            return hr;
        }

        if(FUNC5((void**)(typeinfos+tid), ti, NULL))
            FUNC2(ti);
    }

    *typeinfo = typeinfos[tid];
    return S_OK;
}