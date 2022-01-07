
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IOleInPlaceActiveObject ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HWND ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ BOOL ;


 scalar_t__ E_FAIL ;
 scalar_t__ FAILED (scalar_t__) ;
 int IID_IOleInPlaceActiveObject ;
 scalar_t__ IOleDocumentView_QueryInterface (int ,int *,void**) ;
 scalar_t__ IOleInPlaceActiveObject_GetWindow (int *,scalar_t__*) ;
 int IOleInPlaceActiveObject_Release (int *) ;
 int IsWindow (scalar_t__) ;
 scalar_t__ S_OK ;
 scalar_t__ doc_hwnd ;
 int ok (int,char*,...) ;
 int view ;

__attribute__((used)) static void test_Window(IHTMLDocument2 *doc, BOOL expect_success)
{
    IOleInPlaceActiveObject *activeobject = ((void*)0);
    HWND tmp_hwnd;
    HRESULT hres;

    hres = IOleDocumentView_QueryInterface(view, &IID_IOleInPlaceActiveObject, (void**)&activeobject);
    ok(hres == S_OK, "Could not get IOleInPlaceActiveObject interface: %08x\n", hres);
    if(FAILED(hres))
        return;

    hres = IOleInPlaceActiveObject_GetWindow(activeobject, &tmp_hwnd);

    if(expect_success) {
        ok(hres == S_OK, "GetWindow failed: %08x\n", hres);
        ok(tmp_hwnd == doc_hwnd, "tmp_hwnd=%p, expected %p\n", tmp_hwnd, doc_hwnd);
    }else {
        ok(hres == E_FAIL, "GetWindow returned %08x, expected E_FAIL\n", hres);
        ok(IsWindow(doc_hwnd), "hwnd is destroyed\n");
    }

    IOleInPlaceActiveObject_Release(activeobject);
}
