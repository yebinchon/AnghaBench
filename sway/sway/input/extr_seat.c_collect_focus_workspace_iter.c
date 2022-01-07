
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int node; } ;


 int collect_focus_iter (int *,void*) ;

__attribute__((used)) static void collect_focus_workspace_iter(struct sway_workspace *workspace,
  void *data) {
 collect_focus_iter(&workspace->node, data);
}
