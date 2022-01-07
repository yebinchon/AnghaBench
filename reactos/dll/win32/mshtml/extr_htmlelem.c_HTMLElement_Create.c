
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int (* constructor ) (int *,int *,TYPE_3__**) ;} ;
typedef TYPE_2__ tag_desc_t ;
typedef int nsresult ;
typedef int nsIDOMNode ;
typedef int nsIDOMHTMLElement ;
typedef int nsAString ;
struct TYPE_11__ {int * vtbl; } ;
struct TYPE_13__ {TYPE_1__ node; } ;
typedef int PRUnichar ;
typedef TYPE_3__ HTMLElement ;
typedef int HTMLDocumentNode ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int HTMLElementImplVtbl ;
 int HTMLElement_Init (TYPE_3__*,int *,int *,int *) ;
 int HTMLElement_dispex ;
 int HTMLGenericElement_Create (int *,int *,TYPE_3__**) ;
 int IID_nsIDOMHTMLElement ;
 scalar_t__ NS_FAILED (int ) ;
 int S_OK ;
 int TRACE (char*,int ,TYPE_3__*) ;
 int debugstr_w (int const*) ;
 TYPE_2__* get_tag_desc (int const*) ;
 TYPE_3__* heap_alloc_zero (int) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,int const**) ;
 int nsAString_Init (int *,int *) ;
 int nsIDOMHTMLElement_GetTagName (int *,int *) ;
 int nsIDOMHTMLElement_Release (int *) ;
 int nsIDOMNode_QueryInterface (int *,int *,void**) ;
 int stub1 (int *,int *,TYPE_3__**) ;

HRESULT HTMLElement_Create(HTMLDocumentNode *doc, nsIDOMNode *nsnode, BOOL use_generic, HTMLElement **ret)
{
    nsIDOMHTMLElement *nselem;
    nsAString class_name_str;
    const PRUnichar *class_name;
    const tag_desc_t *tag;
    HTMLElement *elem;
    nsresult nsres;
    HRESULT hres;

    nsres = nsIDOMNode_QueryInterface(nsnode, &IID_nsIDOMHTMLElement, (void**)&nselem);
    if(NS_FAILED(nsres))
        return E_FAIL;

    nsAString_Init(&class_name_str, ((void*)0));
    nsIDOMHTMLElement_GetTagName(nselem, &class_name_str);

    nsAString_GetData(&class_name_str, &class_name);

    tag = get_tag_desc(class_name);
    if(tag) {
        hres = tag->constructor(doc, nselem, &elem);
    }else if(use_generic) {
        hres = HTMLGenericElement_Create(doc, nselem, &elem);
    }else {
        elem = heap_alloc_zero(sizeof(HTMLElement));
        if(elem) {
            elem->node.vtbl = &HTMLElementImplVtbl;
            HTMLElement_Init(elem, doc, nselem, &HTMLElement_dispex);
            hres = S_OK;
        }else {
            hres = E_OUTOFMEMORY;
        }
    }

    TRACE("%s ret %p\n", debugstr_w(class_name), elem);

    nsIDOMHTMLElement_Release(nselem);
    nsAString_Finish(&class_name_str);
    if(FAILED(hres))
        return hres;

    *ret = elem;
    return S_OK;
}
