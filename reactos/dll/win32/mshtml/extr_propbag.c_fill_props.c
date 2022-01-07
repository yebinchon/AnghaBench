
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsIDOMNode ;
typedef int nsIDOMHTMLElement ;
typedef int nsIDOMHTMLCollection ;
typedef int nsAString ;
typedef scalar_t__ UINT32 ;
typedef int PropertyBag ;
typedef char PRUnichar ;
typedef int HRESULT ;


 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int IID_nsIDOMHTMLElement ;
 scalar_t__ NS_FAILED (int ) ;
 scalar_t__ NS_SUCCEEDED (int ) ;
 int S_OK ;
 int add_prop (int *,char const*,char const*) ;
 int get_elem_attr_value (int *,char const*,int *,char const**) ;
 int nsAString_Finish (int *) ;
 int nsAString_InitDepend (int *,char const*) ;
 int nsIDOMHTMLCollection_GetLength (int *,scalar_t__*) ;
 int nsIDOMHTMLCollection_Item (int *,scalar_t__,int **) ;
 int nsIDOMHTMLCollection_Release (int *) ;
 int nsIDOMHTMLElement_GetElementsByTagName (int *,int *,int **) ;
 int nsIDOMHTMLElement_Release (int *) ;
 int nsIDOMNode_QueryInterface (int *,int *,void**) ;
 int nsIDOMNode_Release (int *) ;

__attribute__((used)) static HRESULT fill_props(nsIDOMHTMLElement *nselem, PropertyBag *prop_bag)
{
    const PRUnichar *name, *value;
    nsAString name_str, value_str;
    nsIDOMHTMLCollection *params;
    nsIDOMHTMLElement *param_elem;
    UINT32 length, i;
    nsIDOMNode *nsnode;
    nsresult nsres;
    HRESULT hres = S_OK;

    static const PRUnichar nameW[] = {'n','a','m','e',0};
    static const PRUnichar paramW[] = {'p','a','r','a','m',0};
    static const PRUnichar valueW[] = {'v','a','l','u','e',0};

    nsAString_InitDepend(&name_str, paramW);
    nsres = nsIDOMHTMLElement_GetElementsByTagName(nselem, &name_str, &params);
    nsAString_Finish(&name_str);
    if(NS_FAILED(nsres))
        return E_FAIL;

    nsres = nsIDOMHTMLCollection_GetLength(params, &length);
    if(NS_FAILED(nsres))
        length = 0;

    for(i=0; i < length; i++) {
        nsres = nsIDOMHTMLCollection_Item(params, i, &nsnode);
        if(NS_FAILED(nsres)) {
            hres = E_FAIL;
            break;
        }

        nsres = nsIDOMNode_QueryInterface(nsnode, &IID_nsIDOMHTMLElement, (void**)&param_elem);
        nsIDOMNode_Release(nsnode);
        if(NS_FAILED(nsres)) {
            hres = E_FAIL;
            break;
        }

        nsres = get_elem_attr_value(param_elem, nameW, &name_str, &name);
        if(NS_SUCCEEDED(nsres)) {
            nsres = get_elem_attr_value(param_elem, valueW, &value_str, &value);
            if(NS_SUCCEEDED(nsres)) {
                hres = add_prop(prop_bag, name, value);
                nsAString_Finish(&value_str);
            }

            nsAString_Finish(&name_str);
        }

        nsIDOMHTMLElement_Release(param_elem);
        if(FAILED(hres))
            break;
        if(NS_FAILED(nsres)) {
            hres = E_FAIL;
            break;
        }
    }

    nsIDOMHTMLCollection_Release(params);
    return hres;
}
