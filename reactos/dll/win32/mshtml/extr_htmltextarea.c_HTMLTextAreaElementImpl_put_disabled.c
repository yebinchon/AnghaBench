
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VARIANT_BOOL ;
struct TYPE_3__ {int IHTMLTextAreaElement_iface; } ;
typedef TYPE_1__ HTMLTextAreaElement ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;


 int IHTMLTextAreaElement_put_disabled (int *,int ) ;
 TYPE_1__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLTextAreaElementImpl_put_disabled(HTMLDOMNode *iface, VARIANT_BOOL v)
{
    HTMLTextAreaElement *This = impl_from_HTMLDOMNode(iface);
    return IHTMLTextAreaElement_put_disabled(&This->IHTMLTextAreaElement_iface, v);
}
