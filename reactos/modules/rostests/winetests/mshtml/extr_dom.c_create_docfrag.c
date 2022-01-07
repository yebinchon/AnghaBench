
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLDocument3 ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IHTMLDocument3_Release (int *) ;
 scalar_t__ IHTMLDocument3_createDocumentFragment (int *,int **) ;
 int IID_IHTMLDocument3 ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;

__attribute__((used)) static IHTMLDocument2 *create_docfrag(IHTMLDocument2 *doc)
{
    IHTMLDocument2 *frag;
    IHTMLDocument3 *doc3;
    HRESULT hres;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IHTMLDocument3, (void**)&doc3);
    ok(hres == S_OK, "Could not get IHTMLDocument3 iface: %08x\n", hres);

    hres = IHTMLDocument3_createDocumentFragment(doc3, &frag);
    IHTMLDocument3_Release(doc3);
    ok(hres == S_OK, "createDocumentFragment failed: %08x\n", hres);
    ok(frag != ((void*)0), "frag == NULL\n");

    return frag;
}
