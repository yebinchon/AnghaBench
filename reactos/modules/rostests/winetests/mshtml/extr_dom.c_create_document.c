
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLDocument5 ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_HANDLER ;
 int CLSCTX_INPROC_SERVER ;
 int CLSID_HTMLDocument ;
 scalar_t__ CoCreateInstance (int *,int *,int,int *,void**) ;
 scalar_t__ FAILED (scalar_t__) ;
 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IHTMLDocument2_Release (int *) ;
 int IHTMLDocument5_Release (int *) ;
 int IID_IHTMLDocument2 ;
 int IID_IHTMLDocument5 ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 int win_skip (char*) ;

__attribute__((used)) static IHTMLDocument2 *create_document(void)
{
    IHTMLDocument2 *doc;
    IHTMLDocument5 *doc5;
    HRESULT hres;

    hres = CoCreateInstance(&CLSID_HTMLDocument, ((void*)0), CLSCTX_INPROC_SERVER|CLSCTX_INPROC_HANDLER,
            &IID_IHTMLDocument2, (void**)&doc);
    ok(hres == S_OK, "CoCreateInstance failed: %08x\n", hres);
    if(FAILED(hres))
        return ((void*)0);

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IHTMLDocument5, (void**)&doc5);
    if(FAILED(hres)) {
        win_skip("Could not get IHTMLDocument5, probably too old IE\n");
        IHTMLDocument2_Release(doc);
        return ((void*)0);
    }

    IHTMLDocument5_Release(doc5);
    return doc;
}
