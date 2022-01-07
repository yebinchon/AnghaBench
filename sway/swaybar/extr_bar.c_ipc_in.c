
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swaybar {int dummy; } ;


 scalar_t__ handle_ipc_readable (struct swaybar*) ;
 int set_bar_dirty (struct swaybar*) ;

__attribute__((used)) static void ipc_in(int fd, short mask, void *data) {
 struct swaybar *bar = data;
 if (handle_ipc_readable(bar)) {
  set_bar_dirty(bar);
 }
}
