
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float fontsize; float baseline; float lineheight; float gridsize; int overlay_list; } ;


 float DEFAULT_UI_BASELINE ;
 float DEFAULT_UI_FONTSIZE ;
 float DEFAULT_UI_GRIDSIZE ;
 float DEFAULT_UI_LINEHEIGHT ;
 int GLUT_ACTION_GLUTMAINLOOP_RETURNS ;
 int GLUT_ACTION_ON_WINDOW_CLOSE ;
 int GLUT_DOUBLE ;
 int GLUT_RGBA ;
 int GLUT_SCREEN_HEIGHT ;
 int GLUT_SCREEN_HEIGHT_MM ;
 int GLUT_SCREEN_WIDTH ;
 int GLUT_SCREEN_WIDTH_MM ;
 int GL_MAX_TEXTURE_SIZE ;
 int ctx ;
 int fz_warn (int ,char*) ;
 int glGenLists (int) ;
 int glGetIntegerv (int ,int *) ;
 int glutCreateWindow (char const*) ;
 int glutDisplayFunc (int ) ;
 int glutExtensionSupported (char*) ;
 int glutGet (int ) ;
 int glutInitDisplayMode (int) ;
 int glutInitErrorFunc (int ) ;
 int glutInitWarningFunc (int ) ;
 int glutInitWindowSize (int,int) ;
 int glutKeyboardExtFunc (int ) ;
 int glutKeyboardFunc (int ) ;
 int glutMotionFunc (int ) ;
 int glutMouseFunc (int ) ;
 int glutMouseWheelFunc (int ) ;
 int glutPassiveMotionFunc (int ) ;
 int glutReshapeFunc (int ) ;
 int glutSetOption (int ,int ) ;
 int glutSpecialFunc (int ) ;
 int glutTimerFunc (int,int ,int ) ;
 int has_ARB_texture_non_power_of_two ;
 int max_texture_size ;
 int on_display ;
 int on_error ;
 int on_keyboard ;
 int on_motion ;
 int on_mouse ;
 int on_passive_motion ;
 int on_reshape ;
 int on_special ;
 int on_timer ;
 int on_warning ;
 int on_wheel ;
 TYPE_1__ ui ;
 int ui_init_fonts () ;

void ui_init(int w, int h, const char *title)
{
 float ui_scale;





 glutInitErrorFunc(on_error);
 glutInitWarningFunc(on_warning);
 glutInitDisplayMode(GLUT_RGBA | GLUT_DOUBLE);
 glutInitWindowSize(w, h);
 glutCreateWindow(title);

 glutTimerFunc(500, on_timer, 0);
 glutReshapeFunc(on_reshape);
 glutDisplayFunc(on_display);



 glutKeyboardFunc(on_keyboard);

 glutSpecialFunc(on_special);
 glutMouseFunc(on_mouse);
 glutMotionFunc(on_motion);
 glutPassiveMotionFunc(on_passive_motion);
 glutMouseWheelFunc(on_wheel);

 has_ARB_texture_non_power_of_two = glutExtensionSupported("GL_ARB_texture_non_power_of_two");
 if (!has_ARB_texture_non_power_of_two)
  fz_warn(ctx, "OpenGL implementation does not support non-power of two texture sizes");

 glGetIntegerv(GL_MAX_TEXTURE_SIZE, &max_texture_size);

 ui_scale = 1;
 {
  int wmm = glutGet(GLUT_SCREEN_WIDTH_MM);
  int wpx = glutGet(GLUT_SCREEN_WIDTH);
  int hmm = glutGet(GLUT_SCREEN_HEIGHT_MM);
  int hpx = glutGet(GLUT_SCREEN_HEIGHT);
  if (wmm > 0 && hmm > 0)
  {
   float ppi = ((wpx * 254) / wmm + (hpx * 254) / hmm) / 20;
   if (ppi >= 144) ui_scale = 1.5f;
   if (ppi >= 192) ui_scale = 2.0f;
   if (ppi >= 288) ui_scale = 3.0f;
  }
 }

 ui.fontsize = DEFAULT_UI_FONTSIZE * ui_scale;
 ui.baseline = DEFAULT_UI_BASELINE * ui_scale;
 ui.lineheight = DEFAULT_UI_LINEHEIGHT * ui_scale;
 ui.gridsize = DEFAULT_UI_GRIDSIZE * ui_scale;

 ui_init_fonts();

 ui.overlay_list = glGenLists(1);
}
