
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IOleObject ;
typedef int IOleDocumentView ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;
typedef int DWORD ;


 int CHECK_CALLED (int ) ;
 int CLSID_HTMLDocument ;
 scalar_t__ CallUIActivate_AfterShow ;
 scalar_t__ E_INVALIDARG ;
 int FALSE ;
 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IID_IOleDocumentView ;
 int IID_IOleObject ;
 int IOleDocumentView_Release (int *) ;
 scalar_t__ IOleDocumentView_UIActivate (int *,int ) ;
 scalar_t__ IOleObject_GetUserClassID (int *,int *) ;
 scalar_t__ IOleObject_QueryInterface (int *,int *,void**) ;
 int IOleObject_Release (int *) ;
 int InPlaceFrame_SetBorderSpace ;
 int InPlaceUIWindow_SetActiveObject ;
 int IsEqualGUID (int *,int *) ;
 int OnFocus_TRUE ;
 int SET_EXPECT (int ) ;
 scalar_t__ S_OK ;
 int SetActiveObject ;
 int ShowUI ;
 int TRUE ;
 scalar_t__ call_UIActivate ;
 int doc_hwnd ;
 int * expect_status_text ;
 int last_hwnd ;
 int ok (int,char*,...) ;
 int test_ClientSite (int *,int ) ;
 int test_DoVerb (int *) ;
 int test_InPlaceDeactivate (int *,int ) ;
 int test_OnFrameWindowActivate (int *) ;
 int * view ;

__attribute__((used)) static void test_Activate(IHTMLDocument2 *doc, DWORD flags)
{
    IOleObject *oleobj = ((void*)0);
    IOleDocumentView *docview;
    GUID guid;
    HRESULT hres;

    last_hwnd = doc_hwnd;

    if(view)
        IOleDocumentView_Release(view);
    view = ((void*)0);

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IOleObject, (void**)&oleobj);
    ok(hres == S_OK, "QueryInterface(IID_IOleObject) failed: %08x\n", hres);

    hres = IOleObject_GetUserClassID(oleobj, ((void*)0));
    ok(hres == E_INVALIDARG, "GetUserClassID returned: %08x, expected E_INVALIDARG\n", hres);

    hres = IOleObject_GetUserClassID(oleobj, &guid);
    ok(hres == S_OK, "GetUserClassID failed: %08x\n", hres);
    ok(IsEqualGUID(&guid, &CLSID_HTMLDocument), "guid != CLSID_HTMLDocument\n");

    test_OnFrameWindowActivate((IUnknown*)doc);

    test_ClientSite(oleobj, flags);
    test_InPlaceDeactivate(doc, FALSE);
    test_DoVerb(oleobj);

    if(call_UIActivate == CallUIActivate_AfterShow) {
        hres = IOleObject_QueryInterface(oleobj, &IID_IOleDocumentView, (void **)&docview);
        ok(hres == S_OK, "IOleObject_QueryInterface failed with error 0x%08x\n", hres);

        SET_EXPECT(OnFocus_TRUE);
        SET_EXPECT(SetActiveObject);
        SET_EXPECT(ShowUI);
        SET_EXPECT(InPlaceUIWindow_SetActiveObject);
        SET_EXPECT(InPlaceFrame_SetBorderSpace);
        expect_status_text = ((void*)0);

        hres = IOleDocumentView_UIActivate(docview, TRUE);
        ok(hres == S_OK, "IOleDocumentView_UIActivate failed with error 0x%08x\n", hres);

        CHECK_CALLED(OnFocus_TRUE);
        CHECK_CALLED(SetActiveObject);
        CHECK_CALLED(ShowUI);
        CHECK_CALLED(InPlaceUIWindow_SetActiveObject);
        CHECK_CALLED(InPlaceFrame_SetBorderSpace);

        IOleDocumentView_Release(docview);
    }

    IOleObject_Release(oleobj);

    test_OnFrameWindowActivate((IUnknown*)doc);
}
