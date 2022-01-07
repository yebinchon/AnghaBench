
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_cursor {int dummy; } ;


 int cursor_hide (struct sway_cursor*) ;

__attribute__((used)) static int hide_notify(void *data) {
 struct sway_cursor *cursor = data;
 cursor_hide(cursor);
 return 1;
}
