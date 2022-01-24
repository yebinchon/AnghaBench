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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IDispatchEx ;
typedef  int /*<<< orphan*/ * HRESULT ;
typedef  int /*<<< orphan*/ * DWORD ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DISPID_SAX_XMLREADER_GETFEATURE ; 
 int /*<<< orphan*/  DISPID_XMLDOM_SCHEMACOLLECTION_ADD ; 
 int /*<<< orphan*/ * DISP_E_UNKNOWNNAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDispatchEx ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdexEnumDefault ; 
 int /*<<< orphan*/  fdexNameCaseSensitive ; 
 int /*<<< orphan*/  fdexNameEnsure ; 
 int /*<<< orphan*/  grfdexPropCanAll ; 
 int /*<<< orphan*/  FUNC15 (int,char*,int) ; 

__attribute__((used)) static void FUNC16(IUnknown *obj)
{
    static const WCHAR testW[] = {'t','e','s','t','p','r','o','p',0};
    static const WCHAR starW[] = {'*',0};
    DISPID dispid = DISPID_SAX_XMLREADER_GETFEATURE;
    IDispatchEx *dispex;
    IUnknown *unk;
    DWORD props;
    UINT ticnt;
    HRESULT hr;
    BSTR name;

    hr = FUNC11(obj, &IID_IDispatchEx, (void**)&dispex);
    FUNC0(hr, S_OK);
    if (FUNC1(hr)) return;

    ticnt = 0;
    hr = FUNC9(dispex, &ticnt);
    FUNC0(hr, S_OK);
    FUNC15(ticnt == 1, "ticnt=%u\n", ticnt);

    name = FUNC13(starW);
    hr = FUNC3(dispex, name, fdexNameCaseSensitive);
    FUNC0(hr, E_NOTIMPL);
    FUNC14(name);

    hr = FUNC2(dispex, dispid);
    FUNC0(hr, E_NOTIMPL);

    props = 0;
    hr = FUNC6(dispex, dispid, grfdexPropCanAll, &props);
    FUNC0(hr, E_NOTIMPL);
    FUNC15(props == 0, "expected 0 got %d\n", *props);

    hr = FUNC5(dispex, dispid, &name);
    FUNC0(hr, E_NOTIMPL);
    if (FUNC12(hr)) FUNC14(name);

    hr = FUNC8(dispex, fdexEnumDefault, DISPID_XMLDOM_SCHEMACOLLECTION_ADD, &dispid);
    FUNC0(hr, E_NOTIMPL);

    unk = (IUnknown*)0xdeadbeef;
    hr = FUNC7(dispex, &unk);
    FUNC0(hr, E_NOTIMPL);
    FUNC15(unk == (IUnknown*)0xdeadbeef, "got %p\n", *unk);

    name = FUNC13(testW);
    hr = FUNC4(dispex, name, fdexNameEnsure, &dispid);
    FUNC15(hr == DISP_E_UNKNOWNNAME, "got 0x%08x\n", *hr);
    FUNC14(name);

    FUNC10(dispex);
}