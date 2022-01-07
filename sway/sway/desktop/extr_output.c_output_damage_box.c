
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wlr_box {int y; int x; } ;
struct sway_output {int damage; TYPE_1__* wlr_output; scalar_t__ ly; scalar_t__ lx; } ;
struct TYPE_2__ {int scale; } ;


 int memcpy (struct wlr_box*,struct wlr_box*,int) ;
 int scale_box (struct wlr_box*,int ) ;
 int wlr_output_damage_add_box (int ,struct wlr_box*) ;

void output_damage_box(struct sway_output *output, struct wlr_box *_box) {
 struct wlr_box box;
 memcpy(&box, _box, sizeof(struct wlr_box));
 box.x -= output->lx;
 box.y -= output->ly;
 scale_box(&box, output->wlr_output->scale);
 wlr_output_damage_add_box(output->damage, &box);
}
