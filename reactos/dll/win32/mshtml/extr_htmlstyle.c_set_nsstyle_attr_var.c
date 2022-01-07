
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int styleid_t ;
typedef int nsIDOMCSSStyleDeclaration ;
typedef int WCHAR ;
typedef int VARIANT ;
typedef int HRESULT ;
typedef int DWORD ;


 scalar_t__ FAILED (int ) ;
 int set_nsstyle_attr (int *,int ,int const*,int ) ;
 int var_to_styleval (int *,int *,int ,int const**) ;

HRESULT set_nsstyle_attr_var(nsIDOMCSSStyleDeclaration *nsstyle, styleid_t sid, VARIANT *value, DWORD flags)
{
    const WCHAR *val;
    WCHAR buf[14];
    HRESULT hres;

    hres = var_to_styleval(value, buf, flags, &val);
    if(FAILED(hres))
        return hres;

    return set_nsstyle_attr(nsstyle, sid, val, flags);
}
