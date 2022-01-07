
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IHTMLElement ;
typedef int IHTMLDocument2 ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IDispatch_QueryInterface (int *,int *,void**) ;
 int IDispatch_Release (int *) ;
 scalar_t__ IHTMLElement_get_document (int *,int **) ;
 int IID_IHTMLDocument2 ;
 scalar_t__ S_OK ;
 int * _get_elem_iface (unsigned int,int *) ;
 int ok (int,char*,...) ;

__attribute__((used)) static IHTMLDocument2 *_get_elem_doc(unsigned line, IUnknown *unk)
{
    IHTMLElement *elem = _get_elem_iface(line, unk);
    IHTMLDocument2 *doc;
    IDispatch *disp;
    HRESULT hres;

    disp = ((void*)0);
    hres = IHTMLElement_get_document(elem, &disp);
    ok(hres == S_OK, "get_document failed: %08x\n", hres);
    ok(disp != ((void*)0), "disp == NULL\n");

    hres = IDispatch_QueryInterface(disp, &IID_IHTMLDocument2, (void**)&doc);
    IDispatch_Release(disp);
    ok(hres == S_OK, "Could not get IHTMLDocument2 iface: %08x\n", hres);

    return doc;
}
