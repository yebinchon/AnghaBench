
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLOptionElement ;
typedef scalar_t__ HRESULT ;
typedef int BSTR ;


 scalar_t__ IHTMLOptionElement_put_value (int *,int ) ;
 scalar_t__ S_OK ;
 int SysFreeString (int ) ;
 int _test_option_value (unsigned int,int *,char const*) ;
 int a2bstr (char const*) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void _test_option_put_value(unsigned line, IHTMLOptionElement *option, const char *value)
{
    BSTR bstr;
    HRESULT hres;

    bstr = a2bstr(value);
    hres = IHTMLOptionElement_put_value(option, bstr);
    SysFreeString(bstr);
    ok(hres == S_OK, "put_value failed: %08x\n", hres);

    _test_option_value(line, option, value);
}
