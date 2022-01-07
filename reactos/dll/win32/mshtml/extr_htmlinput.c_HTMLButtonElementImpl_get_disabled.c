
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VARIANT_BOOL ;
struct TYPE_3__ {int IHTMLButtonElement_iface; } ;
typedef int HTMLDOMNode ;
typedef TYPE_1__ HTMLButtonElement ;
typedef int HRESULT ;


 int IHTMLButtonElement_get_disabled (int *,int *) ;
 TYPE_1__* button_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLButtonElementImpl_get_disabled(HTMLDOMNode *iface, VARIANT_BOOL *p)
{
    HTMLButtonElement *This = button_from_HTMLDOMNode(iface);
    return IHTMLButtonElement_get_disabled(&This->IHTMLButtonElement_iface, p);
}
