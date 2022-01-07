
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scroll_x; int scroll_y; int mod; } ;


 int glutGetModifiers () ;
 int run_main_loop () ;
 TYPE_1__ ui ;
 int ui_invalidate () ;

__attribute__((used)) static void on_wheel(int wheel, int direction, int x, int y)
{
 ui.scroll_x = wheel == 1 ? direction : 0;
 ui.scroll_y = wheel == 0 ? direction : 0;
 ui.mod = glutGetModifiers();
 run_main_loop();
 ui_invalidate();
 ui.scroll_x = ui.scroll_y = 0;
}
