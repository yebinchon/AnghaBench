
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int IHTMLFrameBase2_iface; } ;
struct TYPE_5__ {TYPE_1__ framebase; } ;
typedef TYPE_2__ HTMLIFrame ;
typedef int HTMLDOMNode ;
typedef int HRESULT ;
typedef int BSTR ;


 int IHTMLFrameBase2_get_readyState (int *,int *) ;
 TYPE_2__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static HRESULT HTMLIFrame_get_readystate(HTMLDOMNode *iface, BSTR *p)
{
    HTMLIFrame *This = impl_from_HTMLDOMNode(iface);

    return IHTMLFrameBase2_get_readyState(&This->framebase.IHTMLFrameBase2_iface, p);
}
