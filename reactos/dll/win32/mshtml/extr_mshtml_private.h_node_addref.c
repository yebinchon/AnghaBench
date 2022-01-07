
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IHTMLDOMNode_iface; } ;
typedef TYPE_1__ HTMLDOMNode ;


 int IHTMLDOMNode_AddRef (int *) ;

__attribute__((used)) static inline void node_addref(HTMLDOMNode *node)
{
    IHTMLDOMNode_AddRef(&node->IHTMLDOMNode_iface);
}
