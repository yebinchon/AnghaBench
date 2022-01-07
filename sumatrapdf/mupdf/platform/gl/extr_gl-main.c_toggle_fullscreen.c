
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GLUT_WINDOW_HEIGHT ;
 int GLUT_WINDOW_WIDTH ;
 int GLUT_WINDOW_X ;
 int GLUT_WINDOW_Y ;
 int glutFullScreen () ;
 int glutGet (int ) ;
 int glutPositionWindow (int,int) ;
 int glutReshapeWindow (int,int) ;
 int isfullscreen ;

__attribute__((used)) static void toggle_fullscreen(void)
{
 static int win_x = 0, win_y = 0;
 static int win_w = 100, win_h = 100;
 if (!isfullscreen)
 {
  win_w = glutGet(GLUT_WINDOW_WIDTH);
  win_h = glutGet(GLUT_WINDOW_HEIGHT);
  win_x = glutGet(GLUT_WINDOW_X);
  win_y = glutGet(GLUT_WINDOW_Y);
  glutFullScreen();
  isfullscreen = 1;
 }
 else
 {
  glutPositionWindow(win_x, win_y);
  glutReshapeWindow(win_w, win_h);
  isfullscreen = 0;
 }
}
