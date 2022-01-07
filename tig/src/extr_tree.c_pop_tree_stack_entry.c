
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct position {int dummy; } ;


 int pop_view_history_state (int *,struct position*,char**) ;
 int tree_view_history ;

__attribute__((used)) static void
pop_tree_stack_entry(struct position *position)
{
 char *path_position = ((void*)0);

 pop_view_history_state(&tree_view_history, position, &path_position);
 path_position[0] = 0;
}
