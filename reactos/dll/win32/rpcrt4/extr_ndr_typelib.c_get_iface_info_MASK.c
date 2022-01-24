#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WORD ;
struct TYPE_8__ {scalar_t__ syskind; } ;
struct TYPE_7__ {scalar_t__ typekind; int cbSizeVft; int /*<<< orphan*/  guid; scalar_t__ cFuncs; } ;
typedef  scalar_t__ TYPEKIND ;
typedef  TYPE_1__ TYPEATTR ;
typedef  TYPE_2__ TLIBATTR ;
typedef  scalar_t__ SYSKIND ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HREFTYPE ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ SYS_WIN64 ; 
 scalar_t__ TKIND_DISPATCH ; 

__attribute__((used)) static HRESULT FUNC10(ITypeInfo **typeinfo, WORD *funcs, WORD *parentfuncs,
        GUID *parentiid)
{
    ITypeInfo *real_typeinfo, *parentinfo;
    TYPEATTR *typeattr;
    ITypeLib *typelib;
    TLIBATTR *libattr;
    TYPEKIND typekind;
    HREFTYPE reftype;
    SYSKIND syskind;
    HRESULT hr;

    /* Dual interfaces report their size to be sizeof(IDispatchVtbl) and their
     * implemented type to be IDispatch. We need to retrieve the underlying
     * interface to get that information. */
    hr = FUNC4(*typeinfo, &typeattr);
    if (FUNC0(hr))
        return hr;
    typekind = typeattr->typekind;
    FUNC6(*typeinfo, typeattr);
    if (typekind == TKIND_DISPATCH)
    {
        hr = FUNC3(*typeinfo, -1, &reftype);
        if (FUNC0(hr))
            return hr;

        hr = FUNC2(*typeinfo, reftype, &real_typeinfo);
        if (FUNC0(hr))
            return hr;

        FUNC5(*typeinfo);
        *typeinfo = real_typeinfo;
    }

    hr = FUNC1(*typeinfo, &typelib, NULL);
    if (FUNC0(hr))
        return hr;

    hr = FUNC7(typelib, &libattr);
    if (FUNC0(hr))
    {
        FUNC8(typelib);
        return hr;
    }
    syskind = libattr->syskind;
    FUNC9(typelib, libattr);
    FUNC8(typelib);

    hr = FUNC4(*typeinfo, &typeattr);
    if (FUNC0(hr))
        return hr;
    *funcs = typeattr->cFuncs;
    *parentfuncs = typeattr->cbSizeVft / (syskind == SYS_WIN64 ? 8 : 4) - *funcs;
    FUNC6(*typeinfo, typeattr);

    hr = FUNC3(*typeinfo, 0, &reftype);
    if (FUNC0(hr))
        return hr;
    hr = FUNC2(*typeinfo, reftype, &parentinfo);
    if (FUNC0(hr))
        return hr;
    hr = FUNC4(parentinfo, &typeattr);
    if (FUNC0(hr))
        return hr;
    *parentiid = typeattr->guid;
    FUNC6(parentinfo, typeattr);
    FUNC5(parentinfo);

    return hr;
}