
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IHTMLImgElement_iface; } ;
typedef TYPE_1__ HTMLImgElement ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;
typedef int BSTR ;


 int IHTMLImgElement_get_readyState (int *,int *) ;
 TYPE_1__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLImgElement_get_readystate(HTMLDOMNode *iface, BSTR *p)
{
    HTMLImgElement *This = impl_from_HTMLDOMNode(iface);

    return IHTMLImgElement_get_readyState(&This->IHTMLImgElement_iface, p);
}
