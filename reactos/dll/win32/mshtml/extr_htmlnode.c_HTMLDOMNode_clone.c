
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int nsIDOMNode ;
struct TYPE_5__ {int doc; } ;
typedef TYPE_1__ HTMLDOMNode ;
typedef int HRESULT ;


 int create_node (int ,int *,TYPE_1__**) ;

__attribute__((used)) static HRESULT HTMLDOMNode_clone(HTMLDOMNode *This, nsIDOMNode *nsnode, HTMLDOMNode **ret)
{
    return create_node(This->doc, nsnode, ret);
}
