
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int dummy; } ;


 int _workspace_by_number ;
 struct sway_workspace* root_find_workspace (int ,void*) ;

struct sway_workspace *workspace_by_number(const char* name) {
 return root_find_workspace(_workspace_by_number, (void *) name);
}
