
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int window_h; int window_w; scalar_t__ overlay; int cursor; TYPE_2__* layout; TYPE_2__* layout_stack; TYPE_1__* cavity; TYPE_1__* cavity_stack; int * hot; } ;
struct TYPE_5__ {scalar_t__ pady; scalar_t__ padx; int anchor; int fill; int side; } ;
struct TYPE_4__ {int y1; int x1; scalar_t__ y0; scalar_t__ x0; } ;


 int ALL ;
 int BOTH ;
 int GLUT_CURSOR_INHERIT ;
 int GL_COLOR_BUFFER_BIT ;
 int GL_MODELVIEW ;
 int GL_PROJECTION ;
 int NW ;
 int glClear (int ) ;
 int glLoadIdentity () ;
 int glMatrixMode (int ) ;
 int glOrtho (int ,int ,int ,int ,int,int) ;
 int glViewport (int ,int ,int ,int ) ;
 TYPE_3__ ui ;

void ui_begin(void)
{
 ui.hot = ((void*)0);

 ui.cavity = ui.cavity_stack;
 ui.cavity->x0 = 0;
 ui.cavity->y0 = 0;
 ui.cavity->x1 = ui.window_w;
 ui.cavity->y1 = ui.window_h;

 ui.layout = ui.layout_stack;
 ui.layout->side = ALL;
 ui.layout->fill = BOTH;
 ui.layout->anchor = NW;
 ui.layout->padx = 0;
 ui.layout->pady = 0;

 ui.cursor = GLUT_CURSOR_INHERIT;

 ui.overlay = 0;

 glViewport(0, 0, ui.window_w, ui.window_h);
 glClear(GL_COLOR_BUFFER_BIT);

 glMatrixMode(GL_PROJECTION);
 glLoadIdentity();
 glOrtho(0, ui.window_w, ui.window_h, 0, -1, 1);

 glMatrixMode(GL_MODELVIEW);
 glLoadIdentity();
}
