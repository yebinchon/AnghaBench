
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLElement ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 scalar_t__ IHTMLElement_put_innerHTML (int *,int ) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int a2bstr (char const*) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void put_inner_html(IHTMLElement *elem, const char *html)
{
    BSTR str = a2bstr(html);
    HRESULT hres;

    hres = IHTMLElement_put_innerHTML(elem, str);
    ok(hres == S_OK, "put_innerHTML failed: %08x\n", hres);

    SysFreeString(str);
}
