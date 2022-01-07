
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLWindow2 ;
typedef int IHTMLFrameBase2 ;
typedef scalar_t__ HRESULT ;


 int IHTMLFrameBase2_Release (int *) ;
 scalar_t__ IHTMLFrameBase2_get_contentWindow (int *,int **) ;
 int IID_IHTMLFrameBase2 ;
 scalar_t__ IUnknown_QueryInterface (int *,int *,void**) ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;

__attribute__((used)) static IHTMLWindow2 *_get_frame_content_window(unsigned line, IUnknown *elem)
{
    IHTMLFrameBase2 *base2;
    IHTMLWindow2 *window;
    HRESULT hres;

    hres = IUnknown_QueryInterface(elem, &IID_IHTMLFrameBase2, (void**)&base2);
    ok(hres == S_OK, "Could not get IHTMFrameBase2 iface: %08x\n", hres);

    window = ((void*)0);
    hres = IHTMLFrameBase2_get_contentWindow(base2, &window);
    IHTMLFrameBase2_Release(base2);
    ok(hres == S_OK, "get_contentWindow failed: %08x\n", hres);
    ok(window != ((void*)0), "contentWindow = NULL\n");

    return window;
}
