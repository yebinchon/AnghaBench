
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_view {int dummy; } ;
struct sway_output {int dummy; } ;


 int damage_surface_iterator ;
 int output_view_for_each_surface (struct sway_output*,struct sway_view*,int ,int*) ;
 int view_is_visible (struct sway_view*) ;

void output_damage_from_view(struct sway_output *output,
  struct sway_view *view) {
 if (!view_is_visible(view)) {
  return;
 }
 bool whole = 0;
 output_view_for_each_surface(output, view, damage_surface_iterator, &whole);
}
