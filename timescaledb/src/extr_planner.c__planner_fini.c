
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int create_upper_paths_hook ;
 int get_relation_info_hook ;
 int planner_hook ;
 int prev_create_upper_paths_hook ;
 int prev_get_relation_info_hook ;
 int prev_planner_hook ;
 int prev_set_rel_pathlist_hook ;
 int set_rel_pathlist_hook ;

void
_planner_fini(void)
{
 planner_hook = prev_planner_hook;
 set_rel_pathlist_hook = prev_set_rel_pathlist_hook;
 get_relation_info_hook = prev_get_relation_info_hook;
 create_upper_paths_hook = prev_create_upper_paths_hook;
}
