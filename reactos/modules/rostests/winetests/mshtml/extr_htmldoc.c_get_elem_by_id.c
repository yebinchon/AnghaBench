
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
 int a2bstr (char const*) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static IHTMLElement *get_elem_by_id(IHTMLDocument2 *doc, const char *id)
{
    IHTMLDocument3 *doc3;
    BSTR str = a2bstr(id);
    IHTMLElement *ret;
    HRESULT hres;

    hres = IHTMLDocument2_QueryInterface(doc, &IID_IHTMLDocument3, (void**)&doc3);
    ok(hres == S_OK, "Could not get IHTMLDocument3 iface: %08x\n", hres);

    hres = IHTMLDocument3_getElementById(doc3, str, &ret);
    ok(hres == S_OK, "getElementById failed: %08x\n", hres);

    IHTMLDocument3_Release(doc3);
    return ret;
}
