
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t styleid_t ;
typedef int nsIDOMCSSStyleDeclaration ;
typedef int nsAString ;
struct TYPE_2__ {int name; } ;
typedef int PRUnichar ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int BSTR ;


 int TRACE (char*,int ,int ) ;
 int debugstr_w (int ) ;
 int get_nsstyle_attr_nsval (int *,size_t,int *) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,int const**) ;
 int nsAString_Init (int *,int *) ;
 int nsstyle_to_bstr (int const*,int ,int *) ;
 TYPE_1__* style_tbl ;

HRESULT get_nsstyle_attr(nsIDOMCSSStyleDeclaration *nsstyle, styleid_t sid, BSTR *p, DWORD flags)
{
    nsAString str_value;
    const PRUnichar *value;
    HRESULT hres;

    nsAString_Init(&str_value, ((void*)0));

    get_nsstyle_attr_nsval(nsstyle, sid, &str_value);

    nsAString_GetData(&str_value, &value);
    hres = nsstyle_to_bstr(value, flags, p);
    nsAString_Finish(&str_value);

    TRACE("%s -> %s\n", debugstr_w(style_tbl[sid].name), debugstr_w(*p));
    return hres;
}
