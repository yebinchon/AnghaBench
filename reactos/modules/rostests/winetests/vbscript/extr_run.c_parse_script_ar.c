
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int BSTR ;


 int SCRIPTITEM_GLOBALMEMBERS ;
 int SysFreeString (int ) ;
 int a2bstr (char const*) ;
 int parse_script (int ,int ,int *) ;

__attribute__((used)) static HRESULT parse_script_ar(const char *src)
{
    BSTR tmp;
    HRESULT hres;

    tmp = a2bstr(src);
    hres = parse_script(SCRIPTITEM_GLOBALMEMBERS, tmp, ((void*)0));
    SysFreeString(tmp);
    return hres;
}
