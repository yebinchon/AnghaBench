
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_surface {int dummy; } ;
struct wlr_box {int dummy; } ;
struct surface_iterator_data {int user_data; int rotation; int output; int (* user_iterator ) (int ,struct wlr_surface*,struct wlr_box*,int ,int ) ;} ;


 int get_surface_box (struct surface_iterator_data*,struct wlr_surface*,int,int,struct wlr_box*) ;
 int stub1 (int ,struct wlr_surface*,struct wlr_box*,int ,int ) ;

__attribute__((used)) static void output_for_each_surface_iterator(struct wlr_surface *surface,
  int sx, int sy, void *_data) {
 struct surface_iterator_data *data = _data;

 struct wlr_box box;
 bool intersects = get_surface_box(data, surface, sx, sy, &box);
 if (!intersects) {
  return;
 }

 data->user_iterator(data->output, surface, &box, data->rotation,
  data->user_data);
}
