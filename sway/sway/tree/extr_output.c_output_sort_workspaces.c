
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_output {int workspaces; } ;


 int list_stable_sort (int ,int ) ;
 int sort_workspace_cmp_qsort ;

void output_sort_workspaces(struct sway_output *output) {
 list_stable_sort(output->workspaces, sort_workspace_cmp_qsort);
}
