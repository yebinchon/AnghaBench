
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VARIANT_BOOL ;
struct TYPE_3__ {int IHTMLLinkElement_iface; } ;
typedef TYPE_1__ HTMLLinkElement ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;


 int IHTMLLinkElement_get_disabled (int *,int *) ;
 TYPE_1__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLLinkElementImpl_get_disabled(HTMLDOMNode *iface, VARIANT_BOOL *p)
{
    HTMLLinkElement *This = impl_from_HTMLDOMNode(iface);
    return IHTMLLinkElement_get_disabled(&This->IHTMLLinkElement_iface, p);
}
