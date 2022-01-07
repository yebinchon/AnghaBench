
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ i_children; struct TYPE_4__** pp_children; } ;
typedef TYPE_1__ input_item_node_t ;


 int qsort (TYPE_1__**,scalar_t__,int,int ) ;
 int rdh_compar_filename ;

__attribute__((used)) static void rdh_sort(input_item_node_t *p_node)
{
    if (p_node->i_children <= 0)
        return;


    qsort(p_node->pp_children, p_node->i_children,
          sizeof(input_item_node_t *), rdh_compar_filename);


    for (int i = 0; i < p_node->i_children; i++)
        rdh_sort(p_node->pp_children[i]);
}
