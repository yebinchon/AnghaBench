
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IHTMLDOMNode_iface; } ;
typedef TYPE_1__ HTMLDOMNode ;


 int IHTMLDOMNode_Release (int *) ;

__attribute__((used)) static inline void node_release(HTMLDOMNode *node)
{
    IHTMLDOMNode_Release(&node->IHTMLDOMNode_iface);
}
