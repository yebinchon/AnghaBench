
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLWindow2 ;
typedef int IHTMLFrameElement3 ;
typedef int IHTMLDocument2 ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int BOOL ;


 int IDispatch_Release (int *) ;
 int IHTMLDocument2_Release (int *) ;
 int IHTMLFrameElement3_Release (int *) ;
 int IHTMLFrameElement3_get_contentDocument (int *,int **) ;
 int IHTMLWindow2_Release (int *) ;
 int IID_IHTMLFrameElement3 ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int * get_elem_doc (int *) ;
 int * get_frame_content_window (int *) ;
 int * get_window_doc (int *) ;
 int iface_cmp (int *,int *) ;
 int ok (int,char*,...) ;
 int test_ifaces (int *,int ) ;
 int win_skip (char*) ;
 int window_iids ;

__attribute__((used)) static void test_frame_doc(IUnknown *frame_elem, BOOL iframe)
{
    IHTMLDocument2 *window_doc, *elem_doc;
    IHTMLFrameElement3 *frame_elem3;
    IHTMLWindow2 *content_window;
    HRESULT hres;

    content_window = get_frame_content_window(frame_elem);
    test_ifaces((IUnknown*)content_window, window_iids);
    window_doc = get_window_doc(content_window);
    IHTMLWindow2_Release(content_window);

    elem_doc = get_elem_doc(frame_elem);
    ok(iface_cmp((IUnknown*)window_doc, (IUnknown*)elem_doc), "content_doc != elem_doc\n");

    if(!iframe) {
        hres = IUnknown_QueryInterface(frame_elem, &IID_IHTMLFrameElement3, (void**)&frame_elem3);
        if(SUCCEEDED(hres)) {
            IDispatch *disp = ((void*)0);

            hres = IHTMLFrameElement3_get_contentDocument(frame_elem3, &disp);
            ok(hres == S_OK, "get_contentDocument failed: %08x\n", hres);
            ok(disp != ((void*)0), "contentDocument == NULL\n");
            ok(iface_cmp((IUnknown*)disp, (IUnknown*)window_doc), "contentDocument != contentWindow.document\n");

            IDispatch_Release(disp);
            IHTMLFrameElement3_Release(frame_elem3);
        }else {
            win_skip("IHTMLFrameElement3 not supported\n");
        }
    }

    IHTMLDocument2_Release(elem_doc);
    IHTMLDocument2_Release(window_doc);
}
