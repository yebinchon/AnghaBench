
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {int dummy; } ;


 int container_update_marks_textures (struct sway_container*) ;
 int container_update_title_textures (struct sway_container*) ;

__attribute__((used)) static void rebuild_textures_iterator(struct sway_container *con, void *data) {
 container_update_marks_textures(con);
 container_update_title_textures(con);
}
