
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLElement2 ;
typedef int IHTMLElement ;
typedef int IHTMLCurrentStyle ;
typedef scalar_t__ HRESULT ;


 int IHTMLElement2_Release (int *) ;
 scalar_t__ IHTMLElement2_get_currentStyle (int *,int **) ;
 scalar_t__ IHTMLElement_QueryInterface (int *,int *,void**) ;
 int IID_IHTMLElement2 ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static IHTMLCurrentStyle *_get_current_style(unsigned line, IHTMLElement *elem)
{
    IHTMLCurrentStyle *cstyle;
    IHTMLElement2 *elem2;
    HRESULT hres;

    hres = IHTMLElement_QueryInterface(elem, &IID_IHTMLElement2, (void**)&elem2);
    ok(hres == S_OK, "Could not get IHTMLElement2 iface: %08x\n", hres);

    cstyle = ((void*)0);
    hres = IHTMLElement2_get_currentStyle(elem2, &cstyle);
    ok(hres == S_OK, "get_currentStyle failed: %08x\n", hres);
    ok(cstyle != ((void*)0), "cstyle = %p\n", cstyle);

    IHTMLElement2_Release(elem2);
    return cstyle;
}
