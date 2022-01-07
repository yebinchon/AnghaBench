
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_container {int view; } ;
struct surface_iterator_data {int user_data; int user_iterator; int output; } ;


 int output_view_for_each_surface (int ,int ,int ,int ) ;
 int view_is_visible (int ) ;

__attribute__((used)) static void for_each_surface_container_iterator(struct sway_container *con,
  void *_data) {
 if (!con->view || !view_is_visible(con->view)) {
  return;
 }

 struct surface_iterator_data *data = _data;
 output_view_for_each_surface(data->output, con->view,
  data->user_iterator, data->user_data);
}
