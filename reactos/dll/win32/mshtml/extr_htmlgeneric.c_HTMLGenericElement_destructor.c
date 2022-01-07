
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int node; } ;
struct TYPE_5__ {TYPE_1__ element; } ;
typedef TYPE_2__ HTMLGenericElement ;
typedef int HTMLDOMNode ;


 int HTMLElement_destructor (int *) ;
 TYPE_2__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static void HTMLGenericElement_destructor(HTMLDOMNode *iface)
{
    HTMLGenericElement *This = impl_from_HTMLDOMNode(iface);

    HTMLElement_destructor(&This->element.node);
}
