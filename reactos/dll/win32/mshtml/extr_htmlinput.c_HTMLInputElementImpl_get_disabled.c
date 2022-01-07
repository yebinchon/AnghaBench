
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VARIANT_BOOL ;
struct TYPE_3__ {int IHTMLInputElement_iface; } ;
typedef TYPE_1__ HTMLInputElement ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;


 int IHTMLInputElement_get_disabled (int *,int *) ;
 TYPE_1__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLInputElementImpl_get_disabled(HTMLDOMNode *iface, VARIANT_BOOL *p)
{
    HTMLInputElement *This = impl_from_HTMLDOMNode(iface);
    return IHTMLInputElement_get_disabled(&This->IHTMLInputElement_iface, p);
}
