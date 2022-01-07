
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_container {int marks_urgent; int marks_unfocused; int marks_focused_inactive; int marks_focused; } ;
struct TYPE_3__ {int urgent; int unfocused; int focused_inactive; int focused; } ;
struct TYPE_4__ {TYPE_1__ border_colors; int show_marks; } ;


 TYPE_2__* config ;
 int container_damage_whole (struct sway_container*) ;
 int update_marks_texture (struct sway_container*,int *,int *) ;

void container_update_marks_textures(struct sway_container *con) {
 if (!config->show_marks) {
  return;
 }
 update_marks_texture(con, &con->marks_focused,
   &config->border_colors.focused);
 update_marks_texture(con, &con->marks_focused_inactive,
   &config->border_colors.focused_inactive);
 update_marks_texture(con, &con->marks_unfocused,
   &config->border_colors.unfocused);
 update_marks_texture(con, &con->marks_urgent,
   &config->border_colors.urgent);
 container_damage_whole(con);
}
