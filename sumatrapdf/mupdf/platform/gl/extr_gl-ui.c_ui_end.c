
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cursor; scalar_t__ last_cursor; char* active; char* focus; scalar_t__ right; scalar_t__ grab_right; scalar_t__ middle; scalar_t__ grab_middle; scalar_t__ down; scalar_t__ grab_down; int overlay_list; scalar_t__ overlay; } ;


 int GL_NO_ERROR ;
 int ctx ;
 int fz_warn (int ,char*,int ) ;
 int glCallList (int ) ;
 int glGetError () ;
 int glutSetCursor (scalar_t__) ;
 int glutSwapBuffers () ;
 int ogl_error_string (int) ;
 TYPE_1__ ui ;

void ui_end(void)
{
 int code;

 if (ui.overlay)
  glCallList(ui.overlay_list);

 if (ui.cursor != ui.last_cursor)
 {
  glutSetCursor(ui.cursor);
  ui.last_cursor = ui.cursor;
 }

 code = glGetError();
 if (code != GL_NO_ERROR)
  fz_warn(ctx, "glGetError: %s", ogl_error_string(code));

 if (!ui.active && (ui.down || ui.middle || ui.right))
  ui.active = "dummy";

 if ((ui.grab_down && !ui.down) || (ui.grab_middle && !ui.middle) || (ui.grab_right && !ui.right))
 {
  ui.grab_down = ui.grab_middle = ui.grab_right = 0;
  ui.active = ((void*)0);
 }

 if (ui.active)
 {
  if (ui.active != ui.focus)
   ui.focus = ((void*)0);
  if (!ui.grab_down && !ui.grab_middle && !ui.grab_right)
  {
   ui.grab_down = ui.down;
   ui.grab_middle = ui.middle;
   ui.grab_right = ui.right;
  }
 }

 glutSwapBuffers();
}
