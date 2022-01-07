
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int BSTR ;


 int SysFreeString (int ) ;
 int a2bstr (char const*) ;
 int parse_htmlscript (int ) ;

__attribute__((used)) static HRESULT parse_htmlscript_a(const char *src)
{
    HRESULT hres;
    BSTR tmp = a2bstr(src);
    hres = parse_htmlscript(tmp);
    SysFreeString(tmp);

    return hres;
}
