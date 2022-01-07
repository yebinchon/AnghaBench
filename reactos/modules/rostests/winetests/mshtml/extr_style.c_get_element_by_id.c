
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLElement ;
typedef int IHTMLDocument3 ;
typedef int IHTMLDocument2 ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 scalar_t__ IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IHTMLDocument3_Release (int *) ;
 scalar_t__ IHTMLDocument3_getElementById (int *,int ,int **) ;
 int IID_IHTMLDocument3 ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int a2bstr (char const*) ;
 int ok (int,char*,...) ;

__attribute__((used)) static IHTMLElement *get_element_by_id(IHTMLDocument2 *doc, const char *id)
{
    HRESULT hres;
    IHTMLDocument3 *doc3;
    IHTMLElement *result;
    BSTR idW = a2bstr(id);

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IHTMLDocument3, (void**)&doc3);
    ok(hres == S_OK, "QueryInterface(IID_IHTMLDocument3) failed: %08x\n", hres);

    hres = IHTMLDocument3_getElementById(doc3, idW, &result);
    ok(hres == S_OK, "getElementById failed: %08x\n", hres);
    ok(result != ((void*)0), "result == NULL\n");
    SysFreeString(idW);

    IHTMLDocument3_Release(doc3);
    return result;
}
