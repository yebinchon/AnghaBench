
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_workspace {int output; } ;


 struct sway_workspace* workspace_output_prev_next_impl (int ,int,int) ;

struct sway_workspace *workspace_output_next(
  struct sway_workspace *current, bool create) {
 return workspace_output_prev_next_impl(current->output, 1, create);
}
