
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_view {int dummy; } ;
struct sway_output {int dummy; } ;
struct render_data {float alpha; int * damage; } ;
typedef int pixman_region32_t ;


 int output_view_for_each_popup (struct sway_output*,struct sway_view*,int ,struct render_data*) ;
 int render_popup_iterator ;

__attribute__((used)) static void render_view_popups(struct sway_view *view,
  struct sway_output *output, pixman_region32_t *damage, float alpha) {
 struct render_data data = {
  .damage = damage,
  .alpha = alpha,
 };
 output_view_for_each_popup(output, view, render_popup_iterator, &data);
}
