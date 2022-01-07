
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsIDOMNode ;
typedef scalar_t__ UINT16 ;
typedef int BOOL ;


 scalar_t__ COMMENT_NODE ;
 scalar_t__ ELEMENT_NODE ;
 int nsIDOMNode_GetNodeType (int *,scalar_t__*) ;

__attribute__((used)) static inline BOOL is_elem_node(nsIDOMNode *node)
{
    UINT16 type=0;

    nsIDOMNode_GetNodeType(node, &type);

    return type == ELEMENT_NODE || type == COMMENT_NODE;
}
