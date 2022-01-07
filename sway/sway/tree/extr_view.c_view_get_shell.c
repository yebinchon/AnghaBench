
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_view {int type; } ;





const char *view_get_shell(struct sway_view *view) {
 switch(view->type) {
 case 129:
  return "xdg_shell";




 }
 return "unknown";
}
