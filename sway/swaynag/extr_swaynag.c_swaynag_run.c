
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaynag {int run_display; scalar_t__ display; } ;


 int render_frame (struct swaynag*) ;
 int wl_display_disconnect (scalar_t__) ;
 int wl_display_dispatch (scalar_t__) ;

void swaynag_run(struct swaynag *swaynag) {
 swaynag->run_display = 1;
 render_frame(swaynag);
 while (swaynag->run_display
   && wl_display_dispatch(swaynag->display) != -1) {

 }

 if (swaynag->display) {
  wl_display_disconnect(swaynag->display);
 }
}
