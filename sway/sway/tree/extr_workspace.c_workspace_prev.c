
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int dummy; } ;


 struct sway_workspace* workspace_prev_next_impl (struct sway_workspace*,int) ;

struct sway_workspace *workspace_prev(struct sway_workspace *current) {
 return workspace_prev_next_impl(current, -1);
}
