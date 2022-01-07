
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsAString ;
typedef int WCHAR ;
struct TYPE_3__ {int nselem; } ;
typedef TYPE_1__ HTMLElement ;
typedef int HRESULT ;


 int E_FAIL ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int WARN (char*,int ) ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,int const*) ;
 int nsIDOMHTMLElement_SetAttribute (int ,int *,int *) ;

HRESULT elem_string_attr_setter(HTMLElement *elem, const WCHAR *name, const WCHAR *value)
{
    nsAString name_str, val_str;
    nsresult nsres;

    nsAString_InitDepend(&name_str, name);
    nsAString_InitDepend(&val_str, value);
    nsres = nsIDOMHTMLElement_SetAttribute(elem->nselem, &name_str, &val_str);
    nsAString_Finish(&name_str);
    nsAString_Finish(&val_str);

    if(NS_FAILED(nsres)) {
        WARN("SetAttribute failed: %08x\n", nsres);
        return E_FAIL;
    }

    return S_OK;
}
