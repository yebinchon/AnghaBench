
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int input_item_t ;
struct TYPE_4__ {int * pp_children; scalar_t__ i_children; int * p_item; } ;
typedef TYPE_1__ input_item_node_t ;


 int assert (int *) ;
 int input_item_Hold (int *) ;
 TYPE_1__* malloc (int) ;

input_item_node_t *input_item_node_Create( input_item_t *p_input )
{
    input_item_node_t* p_node = malloc( sizeof( input_item_node_t ) );
    if( !p_node )
        return ((void*)0);

    assert( p_input );

    p_node->p_item = p_input;
    input_item_Hold( p_input );

    p_node->i_children = 0;
    p_node->pp_children = ((void*)0);

    return p_node;
}
