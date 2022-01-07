
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsIDOMHTMLIFrameElement ;
struct TYPE_4__ {int * nsiframe; } ;
struct TYPE_5__ {TYPE_1__ framebase; } ;
typedef TYPE_2__ HTMLIFrame ;
typedef int HTMLDOMNode ;


 TYPE_2__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLIFrameElement_Release (int *) ;

__attribute__((used)) static void HTMLIFrame_unlink(HTMLDOMNode *iface)
{
    HTMLIFrame *This = impl_from_HTMLDOMNode(iface);

    if(This->framebase.nsiframe) {
        nsIDOMHTMLIFrameElement *nsiframe = This->framebase.nsiframe;

        This->framebase.nsiframe = ((void*)0);
        nsIDOMHTMLIFrameElement_Release(nsiframe);
    }
}
