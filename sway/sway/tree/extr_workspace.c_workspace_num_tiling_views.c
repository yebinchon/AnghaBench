
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int dummy; } ;


 int count_tiling_views ;
 int workspace_for_each_container (struct sway_workspace*,int ,size_t*) ;

size_t workspace_num_tiling_views(struct sway_workspace *ws) {
 size_t count = 0;
 workspace_for_each_container(ws, count_tiling_views, &count);
 return count;
}
