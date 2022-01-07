
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_surface {int dummy; } ;
struct sway_output {int dummy; } ;


 int damage_surface_iterator ;
 int output_surface_for_each_surface (struct sway_output*,struct wlr_surface*,double,double,int ,int*) ;

void output_damage_surface(struct sway_output *output, double ox, double oy,
  struct wlr_surface *surface, bool whole) {
 output_surface_for_each_surface(output, surface, ox, oy,
  damage_surface_iterator, &whole);
}
