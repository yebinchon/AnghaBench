
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLWindow2 ;
typedef int IHTMLIFrameElement ;
typedef int IHTMLFrameBase2 ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 int IHTMLFrameBase2_Release (int *) ;
 scalar_t__ IHTMLFrameBase2_get_contentWindow (int *,int **) ;
 scalar_t__ IHTMLIFrameElement_QueryInterface (int *,int *,void**) ;
 int IHTMLWindow2_Release (int *) ;
 scalar_t__ IHTMLWindow2_get_document (int *,int **) ;
 int IID_IHTMLFrameBase2 ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;

__attribute__((used)) static IHTMLDocument2* get_iframe_doc(IHTMLIFrameElement *iframe)
{
    HRESULT hres;
    IHTMLFrameBase2 *base;
    IHTMLDocument2 *result = ((void*)0);

    hres = IHTMLIFrameElement_QueryInterface(iframe, &IID_IHTMLFrameBase2, (void**)&base);
    ok(hres == S_OK, "QueryInterface(IID_IHTMLFrameBase2) failed: %08x\n", hres);
    if(hres == S_OK) {
        IHTMLWindow2 *window;

        hres = IHTMLFrameBase2_get_contentWindow(base, &window);
        ok(hres == S_OK, "get_contentWindow failed: %08x\n", hres);
        ok(window != ((void*)0), "window == NULL\n");
        if(window) {
            hres = IHTMLWindow2_get_document(window, &result);
            ok(hres == S_OK, "get_document failed: %08x\n", hres);
            ok(result != ((void*)0), "result == NULL\n");
            IHTMLWindow2_Release(window);
        }
    }
    if(base) IHTMLFrameBase2_Release(base);

    return result;
}
