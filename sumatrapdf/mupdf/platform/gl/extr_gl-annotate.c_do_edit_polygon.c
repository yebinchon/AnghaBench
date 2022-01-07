
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int y; int x; } ;
typedef TYPE_1__ fz_point ;
typedef int fz_irect ;
struct TYPE_9__ {scalar_t__ active; int y; int x; scalar_t__ down; scalar_t__ right; int cursor; scalar_t__ hot; } ;


 int GLUT_CURSOR_CROSSHAIR ;
 int GL_LINE_STRIP ;
 int GL_POINTS ;
 int ctx ;
 TYPE_1__ fz_transform_point (TYPE_1__,int ) ;
 TYPE_1__ fz_transform_point_xy (int ,int ,int ) ;
 int glBegin (int ) ;
 int glColor4f (int,int ,int ,int) ;
 int glEnd () ;
 int glPointSize (int) ;
 int glVertex2f (int ,int ) ;
 int pdf_add_annot_vertex (int ,scalar_t__,TYPE_1__) ;
 TYPE_1__ pdf_annot_vertex (int ,scalar_t__,int) ;
 int pdf_annot_vertex_count (int ,scalar_t__) ;
 scalar_t__ selected_annot ;
 TYPE_2__ ui ;
 scalar_t__ ui_mouse_inside (int ) ;
 int view_page_area ;
 int view_page_ctm ;
 int view_page_inv_ctm ;

__attribute__((used)) static void do_edit_polygon(fz_irect canvas_area, int close)
{
 static int drawing = 0;
 fz_point a, p;

 if (ui_mouse_inside(canvas_area) && ui_mouse_inside(view_page_area))
 {
  ui.hot = selected_annot;
  if (!ui.active || ui.active == selected_annot)
   ui.cursor = GLUT_CURSOR_CROSSHAIR;
  if (!ui.active && ui.down)
  {
   ui.active = selected_annot;
   drawing = 1;
  }
 }

 if (ui.active == selected_annot && drawing)
 {
  int n = pdf_annot_vertex_count(ctx, selected_annot);
  if (n > 0)
  {
   p = pdf_annot_vertex(ctx, selected_annot, n-1);
   p = fz_transform_point(p, view_page_ctm);
   if (close)
   {
    a = pdf_annot_vertex(ctx, selected_annot, 0);
    a = fz_transform_point(a, view_page_ctm);
   }
   glBegin(GL_LINE_STRIP);
   glColor4f(1, 0, 0, 1);
   glVertex2f(p.x, p.y);
   glVertex2f(ui.x, ui.y);
   if (close)
    glVertex2f(a.x, a.y);
   glEnd();
  }

  glColor4f(1, 0, 0, 1);
  glPointSize(4);
  glBegin(GL_POINTS);
  glVertex2f(ui.x, ui.y);
  glEnd();


  if (ui.right)
   drawing = 0;


  if (!ui.down)
  {
   fz_point p = fz_transform_point_xy(ui.x, ui.y, view_page_inv_ctm);
   pdf_add_annot_vertex(ctx, selected_annot, p);
   drawing = 0;
  }
 }
}
