
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsAString ;
typedef scalar_t__ WCHAR ;
struct TYPE_3__ {int nselem; } ;
typedef scalar_t__ PRUnichar ;
typedef TYPE_1__ HTMLElement ;
typedef int HRESULT ;
typedef int * BSTR ;
typedef int BOOL ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int * SysAllocString (scalar_t__ const*) ;
 int TRACE (char*,int ,int ) ;
 int debugstr_w (scalar_t__ const*) ;
 int get_elem_attr_value (int ,scalar_t__ const*,int *,scalar_t__ const**) ;
 int nsAString_Finish (int *) ;

HRESULT elem_string_attr_getter(HTMLElement *elem, const WCHAR *name, BOOL use_null, BSTR *p)
{
    const PRUnichar *val;
    nsAString val_str;
    nsresult nsres;
    HRESULT hres = S_OK;

    nsres = get_elem_attr_value(elem->nselem, name, &val_str, &val);
    if(NS_FAILED(nsres))
        return E_FAIL;

    TRACE("%s: returning %s\n", debugstr_w(name), debugstr_w(val));

    if(*val || !use_null) {
        *p = SysAllocString(val);
        if(!*p)
            hres = E_OUTOFMEMORY;
    }else {
        *p = ((void*)0);
    }
    nsAString_Finish(&val_str);
    return hres;
}
