
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; int y; int down_x; int down_y; int down; int middle_x; int middle_y; int middle; int right_x; int right_y; int right; int mod; } ;


 int GLUT_DOWN ;



 int GLUT_UP ;
 int glutGetModifiers () ;
 int on_wheel (int,int,int,int) ;
 int run_main_loop () ;
 TYPE_1__ ui ;
 int ui_invalidate () ;

__attribute__((used)) static void on_mouse(int button, int action, int x, int y)
{
 ui.x = x;
 ui.y = y;
 if (action == GLUT_DOWN)
 {
  switch (button)
  {
  case 130:
   ui.down_x = x;
   ui.down_y = y;
   ui.down = 1;
   break;
  case 129:
   ui.middle_x = x;
   ui.middle_y = y;
   ui.middle = 1;
   break;
  case 128:
   ui.right_x = x;
   ui.right_y = y;
   ui.right = 1;
   break;
  case 3: on_wheel(0, 1, x, y); break;
  case 4: on_wheel(0, -1, x, y); break;
  case 5: on_wheel(1, 1, x, y); break;
  case 6: on_wheel(1, -1, x, y); break;
  }
 }
 else if (action == GLUT_UP)
 {
  switch (button)
  {
  case 130: ui.down = 0; break;
  case 129: ui.middle = 0; break;
  case 128: ui.right = 0; break;
  }
 }
 ui.mod = glutGetModifiers();
 run_main_loop();
 ui_invalidate();
}
