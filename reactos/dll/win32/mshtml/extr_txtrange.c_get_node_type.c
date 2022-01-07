
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsIDOMNode ;
typedef int UINT16 ;


 int nsIDOMNode_GetNodeType (int *,int *) ;

__attribute__((used)) static UINT16 get_node_type(nsIDOMNode *node)
{
    UINT16 type = 0;

    if(node)
        nsIDOMNode_GetNodeType(node, &type);

    return type;
}
