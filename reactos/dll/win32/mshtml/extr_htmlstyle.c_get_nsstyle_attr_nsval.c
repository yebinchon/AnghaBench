
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t styleid_t ;
typedef int nsresult ;
typedef int nsIDOMCSSStyleDeclaration ;
typedef int nsAString ;
struct TYPE_2__ {int name; } ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 int E_FAIL ;
 scalar_t__ NS_FAILED (int ) ;
 int NS_OK ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,int ) ;
 int nsIDOMCSSStyleDeclaration_GetPropertyValue (int *,int *,int *) ;
 TYPE_1__* style_tbl ;

__attribute__((used)) static HRESULT get_nsstyle_attr_nsval(nsIDOMCSSStyleDeclaration *nsstyle, styleid_t sid, nsAString *value)
{
    nsAString str_name;
    nsresult nsres;

    nsAString_InitDepend(&str_name, style_tbl[sid].name);

    nsres = nsIDOMCSSStyleDeclaration_GetPropertyValue(nsstyle, &str_name, value);
    if(NS_FAILED(nsres)) {
        ERR("SetProperty failed: %08x\n", nsres);
        return E_FAIL;
    }

    nsAString_Finish(&str_name);

    return NS_OK;
}
