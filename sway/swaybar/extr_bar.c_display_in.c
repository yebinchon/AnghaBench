
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar {int running; int display; } ;


 int wl_display_dispatch (int ) ;

__attribute__((used)) static void display_in(int fd, short mask, void *data) {
 struct swaybar *bar = data;
 if (wl_display_dispatch(bar->display) == -1) {
  bar->running = 0;
 }
}
