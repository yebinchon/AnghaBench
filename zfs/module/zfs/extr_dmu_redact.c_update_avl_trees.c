
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct redact_node {TYPE_1__* rt_arg; int record; } ;
typedef int avl_tree_t ;
struct TYPE_2__ {int error_code; int q; } ;


 int avl_add (int *,struct redact_node*) ;
 int avl_remove (int *,struct redact_node*) ;
 int get_next_redact_record (int *,int ) ;

__attribute__((used)) static int
update_avl_trees(avl_tree_t *start_tree, avl_tree_t *end_tree,
    struct redact_node *redact_node)
{
 avl_remove(start_tree, redact_node);
 avl_remove(end_tree, redact_node);
 redact_node->record = get_next_redact_record(&redact_node->rt_arg->q,
     redact_node->record);
 avl_add(end_tree, redact_node);
 avl_add(start_tree, redact_node);
 return (redact_node->rt_arg->error_code);
}
