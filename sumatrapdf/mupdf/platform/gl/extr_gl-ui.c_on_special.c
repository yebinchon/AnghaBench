
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; int y; int key; int mod; int plain; } ;


 int GLUT_ACTIVE_SHIFT ;
 int KEY_DELETE ;
 int KEY_DOWN ;
 int KEY_END ;
 int KEY_F1 ;
 int KEY_F10 ;
 int KEY_F11 ;
 int KEY_F12 ;
 int KEY_F2 ;
 int KEY_F3 ;
 int KEY_F4 ;
 int KEY_F5 ;
 int KEY_F6 ;
 int KEY_F7 ;
 int KEY_F8 ;
 int KEY_F9 ;
 int KEY_HOME ;
 int KEY_INSERT ;
 int KEY_LEFT ;
 int KEY_PAGE_DOWN ;
 int KEY_PAGE_UP ;
 int KEY_RIGHT ;
 int KEY_UP ;
 int glutGetModifiers () ;
 int run_main_loop () ;
 TYPE_1__ ui ;
 int ui_invalidate () ;

__attribute__((used)) static void on_special(int key, int x, int y)
{
 ui.x = x;
 ui.y = y;
 ui.key = 0;

 switch (key)
 {
 case 133: ui.key = KEY_INSERT; break;

 case 149: ui.key = KEY_DELETE; break;

 case 129: ui.key = KEY_RIGHT; break;
 case 132: ui.key = KEY_LEFT; break;
 case 148: ui.key = KEY_DOWN; break;
 case 128: ui.key = KEY_UP; break;
 case 130: ui.key = KEY_PAGE_UP; break;
 case 131: ui.key = KEY_PAGE_DOWN; break;
 case 134: ui.key = KEY_HOME; break;
 case 147: ui.key = KEY_END; break;
 case 146: ui.key = KEY_F1; break;
 case 142: ui.key = KEY_F2; break;
 case 141: ui.key = KEY_F3; break;
 case 140: ui.key = KEY_F4; break;
 case 139: ui.key = KEY_F5; break;
 case 138: ui.key = KEY_F6; break;
 case 137: ui.key = KEY_F7; break;
 case 136: ui.key = KEY_F8; break;
 case 135: ui.key = KEY_F9; break;
 case 145: ui.key = KEY_F10; break;
 case 144: ui.key = KEY_F11; break;
 case 143: ui.key = KEY_F12; break;
 }

 if (ui.key)
 {
  ui.mod = glutGetModifiers();
  ui.plain = !(ui.mod & ~GLUT_ACTIVE_SHIFT);
  run_main_loop();
  ui.key = ui.plain = 0;
  ui_invalidate();
 }
}
