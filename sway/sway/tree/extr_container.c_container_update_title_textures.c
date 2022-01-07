
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_container {int title_urgent; int title_unfocused; int title_focused_inactive; int title_focused; } ;
struct TYPE_3__ {int urgent; int unfocused; int focused_inactive; int focused; } ;
struct TYPE_4__ {TYPE_1__ border_colors; } ;


 TYPE_2__* config ;
 int container_damage_whole (struct sway_container*) ;
 int update_title_texture (struct sway_container*,int *,int *) ;

void container_update_title_textures(struct sway_container *container) {
 update_title_texture(container, &container->title_focused,
   &config->border_colors.focused);
 update_title_texture(container, &container->title_focused_inactive,
   &config->border_colors.focused_inactive);
 update_title_texture(container, &container->title_unfocused,
   &config->border_colors.unfocused);
 update_title_texture(container, &container->title_urgent,
   &config->border_colors.urgent);
 container_damage_whole(container);
}
