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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IOleObject ;
typedef  int /*<<< orphan*/  IOleDocumentView ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLSID_HTMLDocument ; 
 scalar_t__ CallUIActivate_AfterShow ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_IOleDocumentView ; 
 int /*<<< orphan*/  IID_IOleObject ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InPlaceFrame_SetBorderSpace ; 
 int /*<<< orphan*/  InPlaceUIWindow_SetActiveObject ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OnFocus_TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  SetActiveObject ; 
 int /*<<< orphan*/  ShowUI ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ call_UIActivate ; 
 int /*<<< orphan*/  doc_hwnd ; 
 int /*<<< orphan*/ * expect_status_text ; 
 int /*<<< orphan*/  last_hwnd ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * view ; 

__attribute__((used)) static void FUNC14(IHTMLDocument2 *doc, DWORD flags)
{
    IOleObject *oleobj = NULL;
    IOleDocumentView *docview;
    GUID guid;
    HRESULT hres;

    last_hwnd = doc_hwnd;

    if(view)
        FUNC2(view);
    view = NULL;

    hres = FUNC1(doc, &IID_IOleObject, (void**)&oleobj);
    FUNC9(hres == S_OK, "QueryInterface(IID_IOleObject) failed: %08x\n", hres);

    hres = FUNC4(oleobj, NULL);
    FUNC9(hres == E_INVALIDARG, "GetUserClassID returned: %08x, expected E_INVALIDARG\n", hres);

    hres = FUNC4(oleobj, &guid);
    FUNC9(hres == S_OK, "GetUserClassID failed: %08x\n", hres);
    FUNC9(FUNC7(&guid, &CLSID_HTMLDocument), "guid != CLSID_HTMLDocument\n");

    FUNC13((IUnknown*)doc);

    FUNC10(oleobj, flags);
    FUNC12(doc, FALSE);
    FUNC11(oleobj);

    if(call_UIActivate == CallUIActivate_AfterShow) {
        hres = FUNC5(oleobj, &IID_IOleDocumentView, (void **)&docview);
        FUNC9(hres == S_OK, "IOleObject_QueryInterface failed with error 0x%08x\n", hres);

        FUNC8(OnFocus_TRUE);
        FUNC8(SetActiveObject);
        FUNC8(ShowUI);
        FUNC8(InPlaceUIWindow_SetActiveObject);
        FUNC8(InPlaceFrame_SetBorderSpace);
        expect_status_text = NULL;

        hres = FUNC3(docview, TRUE);
        FUNC9(hres == S_OK, "IOleDocumentView_UIActivate failed with error 0x%08x\n", hres);

        FUNC0(OnFocus_TRUE);
        FUNC0(SetActiveObject);
        FUNC0(ShowUI);
        FUNC0(InPlaceUIWindow_SetActiveObject);
        FUNC0(InPlaceFrame_SetBorderSpace);

        FUNC2(docview);
    }

    FUNC6(oleobj);

    FUNC13((IUnknown*)doc);
}