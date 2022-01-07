
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int nsIDOMHTMLFrameElement ;
struct TYPE_4__ {int * nsframe; } ;
struct TYPE_5__ {TYPE_1__ framebase; } ;
typedef TYPE_2__ HTMLFrameElement ;
typedef int HTMLDOMNode ;


 TYPE_2__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLFrameElement_Release (int *) ;

__attribute__((used)) static void HTMLFrameElement_unlink(HTMLDOMNode *iface)
{
    HTMLFrameElement *This = impl_from_HTMLDOMNode(iface);

    if(This->framebase.nsframe) {
        nsIDOMHTMLFrameElement *nsframe = This->framebase.nsframe;

        This->framebase.nsframe = ((void*)0);
        nsIDOMHTMLFrameElement_Release(nsframe);
    }
}
