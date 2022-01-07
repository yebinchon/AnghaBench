
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nsIDOMHTMLImageElement ;
struct TYPE_3__ {int * nsimg; } ;
typedef TYPE_1__ HTMLImgElement ;
typedef int HTMLDOMNode ;


 TYPE_1__* impl_from_HTMLDOMNode (int *) ;
 int nsIDOMHTMLImageElement_Release (int *) ;

__attribute__((used)) static void HTMLImgElement_unlink(HTMLDOMNode *iface)
{
    HTMLImgElement *This = impl_from_HTMLDOMNode(iface);

    if(This->nsimg) {
        nsIDOMHTMLImageElement *nsimg = This->nsimg;

        This->nsimg = ((void*)0);
        nsIDOMHTMLImageElement_Release(nsimg);
    }
}
