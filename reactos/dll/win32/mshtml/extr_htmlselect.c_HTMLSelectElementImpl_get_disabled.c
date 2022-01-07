
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VARIANT_BOOL ;
struct TYPE_3__ {int IHTMLSelectElement_iface; } ;
typedef TYPE_1__ HTMLSelectElement ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;


 int IHTMLSelectElement_get_disabled (int *,int *) ;
 TYPE_1__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLSelectElementImpl_get_disabled(HTMLDOMNode *iface, VARIANT_BOOL *p)
{
    HTMLSelectElement *This = impl_from_HTMLDOMNode(iface);
    return IHTMLSelectElement_get_disabled(&This->IHTMLSelectElement_iface, p);
}
