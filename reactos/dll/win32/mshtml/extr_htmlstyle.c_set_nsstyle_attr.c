
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t styleid_t ;
typedef int nsresult ;
typedef int nsIDOMCSSStyleDeclaration ;
typedef int nsAString ;
typedef int WCHAR ;
struct TYPE_2__ {int const* name; } ;
typedef int const* LPWSTR ;
typedef int HRESULT ;
typedef int DWORD ;


 int ATTR_FIX_PX ;
 int ATTR_FIX_URL ;
 int ERR (char*,int ) ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int const* emptyW ;
 int * fix_px_value (int const*) ;
 int * fix_url_value (int const*) ;
 int heap_free (int const*) ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,int const*) ;
 int nsIDOMCSSStyleDeclaration_SetProperty (int *,int *,int *,int *) ;
 TYPE_1__* style_tbl ;

HRESULT set_nsstyle_attr(nsIDOMCSSStyleDeclaration *nsstyle, styleid_t sid, const WCHAR *value, DWORD flags)
{
    nsAString str_name, str_value, str_empty;
    LPWSTR val = ((void*)0);
    nsresult nsres;

    if(value) {
        if(flags & ATTR_FIX_PX)
            val = fix_px_value(value);
        else if(flags & ATTR_FIX_URL)
            val = fix_url_value(value);
    }

    nsAString_InitDepend(&str_name, style_tbl[sid].name);
    nsAString_InitDepend(&str_value, val ? val : value);
    nsAString_InitDepend(&str_empty, emptyW);

    nsres = nsIDOMCSSStyleDeclaration_SetProperty(nsstyle, &str_name, &str_value, &str_empty);
    if(NS_FAILED(nsres))
        ERR("SetProperty failed: %08x\n", nsres);

    nsAString_Finish(&str_name);
    nsAString_Finish(&str_value);
    nsAString_Finish(&str_empty);
    heap_free(val);

    return S_OK;
}
