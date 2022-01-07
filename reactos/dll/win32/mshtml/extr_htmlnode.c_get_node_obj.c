
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
typedef TYPE_1__ IHTMLDOMNode ;
typedef int HTMLDOMNode ;


 int HTMLDOMNodeVtbl ;
 int * impl_from_IHTMLDOMNode (TYPE_1__*) ;
 int node_addref (int *) ;

__attribute__((used)) static HTMLDOMNode *get_node_obj(IHTMLDOMNode *iface)
{
    HTMLDOMNode *ret;

    if(iface->lpVtbl != &HTMLDOMNodeVtbl)
        return ((void*)0);

    ret = impl_from_IHTMLDOMNode(iface);
    node_addref(ret);
    return ret;
}
