
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsresult ;
typedef int nsIDOMNode ;
typedef int nsIDOMHTMLElement ;
typedef int nsIDOMHTMLCollection ;
typedef int nsAString ;
typedef int WCHAR ;
typedef scalar_t__ UINT32 ;
struct TYPE_4__ {int nsform; } ;
typedef char PRUnichar ;
typedef TYPE_1__ HTMLFormElement ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;
typedef int DWORD ;
typedef scalar_t__ DISPID ;
typedef char* BSTR ;


 int DISP_E_UNKNOWNNAME ;
 int E_FAIL ;
 int FIXME (char*,int ) ;
 int IID_nsIDOMHTMLElement ;
 scalar_t__ MSHTML_CUSTOM_DISPID_CNT ;
 scalar_t__ MSHTML_DISPID_CUSTOM_MIN ;
 scalar_t__ NS_FAILED (int ) ;
 scalar_t__ NS_SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*,int ,int ,scalar_t__*) ;
 int get_elem_attr_value (int *,char const*,int *,char const**) ;
 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,char const**) ;
 int nsAString_Init (int *,int *) ;
 int nsIDOMHTMLCollection_GetLength (int *,scalar_t__*) ;
 int nsIDOMHTMLCollection_Item (int *,scalar_t__,int **) ;
 int nsIDOMHTMLCollection_Release (int *) ;
 int nsIDOMHTMLElement_GetId (int *,int *) ;
 int nsIDOMHTMLElement_Release (int *) ;
 int nsIDOMHTMLFormElement_GetElements (int ,int **) ;
 int nsIDOMNode_QueryInterface (int *,int *,void**) ;
 int nsIDOMNode_Release (int *) ;
 int strcmpiW (char const*,char*) ;
 scalar_t__ strtoulW (char*,int **,int) ;
 int wine_dbgstr_w (char*) ;

__attribute__((used)) static HRESULT HTMLFormElement_get_dispid(HTMLDOMNode *iface,
        BSTR name, DWORD grfdex, DISPID *pid)
{
    HTMLFormElement *This = impl_from_HTMLDOMNode(iface);
    nsIDOMHTMLCollection *elements;
    nsAString nsstr, name_str;
    UINT32 len, i;
    nsresult nsres;
    HRESULT hres = DISP_E_UNKNOWNNAME;

    static const PRUnichar nameW[] = {'n','a','m','e',0};

    TRACE("(%p)->(%s %x %p)\n", This, wine_dbgstr_w(name), grfdex, pid);

    nsres = nsIDOMHTMLFormElement_GetElements(This->nsform, &elements);
    if(NS_FAILED(nsres)) {
        FIXME("GetElements failed: 0x%08x\n", nsres);
        return E_FAIL;
    }

    nsres = nsIDOMHTMLCollection_GetLength(elements, &len);
    if(NS_FAILED(nsres)) {
        FIXME("GetLength failed: 0x%08x\n", nsres);
        nsIDOMHTMLCollection_Release(elements);
        return E_FAIL;
    }

    if(len > MSHTML_CUSTOM_DISPID_CNT)
        len = MSHTML_CUSTOM_DISPID_CNT;


    if('0' <= *name && *name <= '9') {
        WCHAR *end_ptr;

        i = strtoulW(name, &end_ptr, 10);
        if(!*end_ptr && i < len) {
            *pid = MSHTML_DISPID_CUSTOM_MIN + i;
            return S_OK;
        }
    }

    nsAString_Init(&nsstr, ((void*)0));
    for(i = 0; i < len; ++i) {
        nsIDOMNode *nsitem;
        nsIDOMHTMLElement *nshtml_elem;
        const PRUnichar *str;

        nsres = nsIDOMHTMLCollection_Item(elements, i, &nsitem);
        if(NS_FAILED(nsres)) {
            FIXME("Item failed: 0x%08x\n", nsres);
            hres = E_FAIL;
            break;
        }

        nsres = nsIDOMNode_QueryInterface(nsitem, &IID_nsIDOMHTMLElement, (void**)&nshtml_elem);
        nsIDOMNode_Release(nsitem);
        if(NS_FAILED(nsres)) {
            FIXME("Failed to get nsIDOMHTMLNode interface: 0x%08x\n", nsres);
            hres = E_FAIL;
            break;
        }


        nsres = nsIDOMHTMLElement_GetId(nshtml_elem, &nsstr);
        if(NS_FAILED(nsres)) {
            FIXME("GetId failed: 0x%08x\n", nsres);
            nsIDOMHTMLElement_Release(nshtml_elem);
            hres = E_FAIL;
            break;
        }
        nsAString_GetData(&nsstr, &str);
        if(!strcmpiW(str, name)) {
            nsIDOMHTMLElement_Release(nshtml_elem);

            *pid = MSHTML_DISPID_CUSTOM_MIN + i;
            hres = S_OK;
            break;
        }


        nsres = get_elem_attr_value(nshtml_elem, nameW, &name_str, &str);
        nsIDOMHTMLElement_Release(nshtml_elem);
        if(NS_SUCCEEDED(nsres)) {
            if(!strcmpiW(str, name)) {
                nsAString_Finish(&name_str);

                *pid = MSHTML_DISPID_CUSTOM_MIN + i;
                hres = S_OK;
                break;
            }
            nsAString_Finish(&name_str);
        }
    }

    nsAString_Finish(&nsstr);
    nsIDOMHTMLCollection_Release(elements);
    return hres;
}
