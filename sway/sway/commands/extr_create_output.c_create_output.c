
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlr_backend {int dummy; } ;


 scalar_t__ wlr_backend_is_wl (struct wlr_backend*) ;
 scalar_t__ wlr_backend_is_x11 (struct wlr_backend*) ;
 int wlr_wl_output_create (struct wlr_backend*) ;
 int wlr_x11_output_create (struct wlr_backend*) ;

__attribute__((used)) static void create_output(struct wlr_backend *backend, void *data) {
 bool *done = data;
 if (*done) {
  return;
 }

 if (wlr_backend_is_wl(backend)) {
  wlr_wl_output_create(backend);
  *done = 1;
 }






}
