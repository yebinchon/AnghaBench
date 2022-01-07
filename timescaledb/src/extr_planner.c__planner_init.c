
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
 int timescale_create_upper_paths_hook ;
 int timescaledb_get_relation_info_hook ;
 int timescaledb_planner ;
 int timescaledb_set_rel_pathlist ;

void
_planner_init(void)
{
 prev_planner_hook = planner_hook;
 planner_hook = timescaledb_planner;
 prev_set_rel_pathlist_hook = set_rel_pathlist_hook;
 set_rel_pathlist_hook = timescaledb_set_rel_pathlist;

 prev_get_relation_info_hook = get_relation_info_hook;
 get_relation_info_hook = timescaledb_get_relation_info_hook;
 prev_create_upper_paths_hook = create_upper_paths_hook;
 create_upper_paths_hook = timescale_create_upper_paths_hook;
}
