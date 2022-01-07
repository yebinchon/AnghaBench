
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * node; } ;
typedef TYPE_1__ xsltemplate ;
typedef int IXMLDOMNode ;


 int IXMLDOMNode_AddRef (int *) ;
 int IXMLDOMNode_Release (int *) ;

__attribute__((used)) static void xsltemplate_set_node( xsltemplate *This, IXMLDOMNode *node )
{
    if (This->node) IXMLDOMNode_Release(This->node);
    This->node = node;
    if (node) IXMLDOMNode_AddRef(node);
}
