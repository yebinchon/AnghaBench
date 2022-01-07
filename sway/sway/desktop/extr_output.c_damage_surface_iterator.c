
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ scale; } ;
struct wlr_surface {TYPE_1__ current; int buffer_damage; } ;
struct wlr_box {int x; int width; int y; int height; } ;
struct sway_output {TYPE_2__* wlr_output; int damage; } ;
typedef int pixman_region32_t ;
struct TYPE_4__ {int scale; } ;


 scalar_t__ ceil (int ) ;
 int pixman_region32_fini (int *) ;
 int pixman_region32_init (int *) ;
 scalar_t__ pixman_region32_not_empty (int *) ;
 int pixman_region32_translate (int *,int,int) ;
 int scale_box (struct wlr_box*,int ) ;
 int wlr_box_rotated_bounds (struct wlr_box*,struct wlr_box*,float) ;
 int wlr_output_damage_add (int ,int *) ;
 int wlr_output_damage_add_box (int ,struct wlr_box*) ;
 int wlr_output_schedule_frame (TYPE_2__*) ;
 int wlr_region_expand (int *,int *,scalar_t__) ;
 int wlr_region_rotated_bounds (int *,int *,float,int,int) ;
 int wlr_region_scale (int *,int *,int ) ;
 int wlr_surface_get_effective_damage (struct wlr_surface*,int *) ;

__attribute__((used)) static void damage_surface_iterator(struct sway_output *output,
  struct wlr_surface *surface, struct wlr_box *_box, float rotation,
  void *_data) {
 bool *data = _data;
 bool whole = *data;

 struct wlr_box box = *_box;
 scale_box(&box, output->wlr_output->scale);

 int center_x = box.x + box.width/2;
 int center_y = box.y + box.height/2;

 if (pixman_region32_not_empty(&surface->buffer_damage)) {
  pixman_region32_t damage;
  pixman_region32_init(&damage);
  wlr_surface_get_effective_damage(surface, &damage);
  wlr_region_scale(&damage, &damage, output->wlr_output->scale);
  if (ceil(output->wlr_output->scale) > surface->current.scale) {


   wlr_region_expand(&damage, &damage,
    ceil(output->wlr_output->scale) - surface->current.scale);
  }
  pixman_region32_translate(&damage, box.x, box.y);
  wlr_region_rotated_bounds(&damage, &damage, rotation,
   center_x, center_y);
  wlr_output_damage_add(output->damage, &damage);
  pixman_region32_fini(&damage);
 }

 if (whole) {
  wlr_box_rotated_bounds(&box, &box, rotation);
  wlr_output_damage_add_box(output->damage, &box);
 }

 wlr_output_schedule_frame(output->wlr_output);
}
