
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int framebase; } ;
typedef TYPE_1__ HTMLIFrame ;
typedef int HTMLDOMNode ;


 int HTMLFrameBase_destructor (int *) ;
 TYPE_1__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static void HTMLIFrame_destructor(HTMLDOMNode *iface)
{
    HTMLIFrame *This = impl_from_HTMLDOMNode(iface);

    HTMLFrameBase_destructor(&This->framebase);
}
