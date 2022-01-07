
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int node; } ;
struct TYPE_6__ {TYPE_1__ element; scalar_t__ plugin_host; } ;
struct TYPE_7__ {TYPE_2__ plugin_container; } ;
typedef TYPE_3__ HTMLObjectElement ;
typedef int HTMLDOMNode ;


 int HTMLElement_destructor (int *) ;
 int detach_plugin_host (scalar_t__) ;
 TYPE_3__* impl_from_HTMLDOMNode (int *) ;

__attribute__((used)) static void HTMLObjectElement_destructor(HTMLDOMNode *iface)
{
    HTMLObjectElement *This = impl_from_HTMLDOMNode(iface);

    if(This->plugin_container.plugin_host)
        detach_plugin_host(This->plugin_container.plugin_host);

    HTMLElement_destructor(&This->plugin_container.element.node);
}
