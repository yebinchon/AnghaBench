
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_20__ {int y; int x; } ;
struct TYPE_19__ {int y; int x; } ;
struct TYPE_18__ {int y; int x; } ;
struct TYPE_17__ {int y; int x; } ;
struct TYPE_21__ {TYPE_4__ ll; TYPE_3__ lr; TYPE_2__ ur; TYPE_1__ ul; } ;
typedef TYPE_5__ fz_quad ;
struct TYPE_22__ {int member_1; int member_0; int y; int x; } ;
typedef TYPE_6__ fz_point ;
struct TYPE_23__ {scalar_t__ active; scalar_t__ down; scalar_t__ right; int y; int x; int cursor; scalar_t__ hot; } ;


 int GLUT_CURSOR_TEXT ;
 int GL_BLEND ;
 int GL_ONE_MINUS_DST_COLOR ;
 int GL_QUADS ;
 int GL_ZERO ;
 int ctx ;
 int fz_highlight_selection (int ,int ,TYPE_6__,TYPE_6__,TYPE_5__*,int ) ;
 TYPE_6__ fz_transform_point (TYPE_6__,int ) ;
 TYPE_5__ fz_transform_quad (TYPE_5__,int ) ;
 int glBegin (int ) ;
 int glBlendFunc (int ,int ) ;
 int glColor4f (int,int,int,int) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glEnd () ;
 int glVertex2f (int ,int ) ;
 int nelem (TYPE_5__*) ;
 int page_text ;
 int pdf_add_annot_quad_point (int ,scalar_t__,TYPE_5__) ;
 int pdf_clear_annot_quad_points (int ,scalar_t__) ;
 scalar_t__ selected_annot ;
 TYPE_7__ ui ;
 scalar_t__ ui_mouse_inside (int ) ;
 int view_page_area ;
 int view_page_ctm ;
 int view_page_inv_ctm ;

__attribute__((used)) static void do_edit_quad_points(void)
{
 static fz_point pt = { 0, 0 };
 static int marking = 0;
 fz_quad hits[1000];
 int i, n;

 if (ui_mouse_inside(view_page_area))
 {
  ui.hot = selected_annot;
  if (!ui.active || ui.active == selected_annot)
   ui.cursor = GLUT_CURSOR_TEXT;
  if (!ui.active && ui.down)
  {
   ui.active = selected_annot;
   marking = 1;
   pt.x = ui.x;
   pt.y = ui.y;
  }
 }

 if (ui.active == selected_annot && marking)
 {
  fz_point page_a = { pt.x, pt.y };
  fz_point page_b = { ui.x, ui.y };

  page_a = fz_transform_point(page_a, view_page_inv_ctm);
  page_b = fz_transform_point(page_b, view_page_inv_ctm);

  n = fz_highlight_selection(ctx, page_text, page_a, page_b, hits, nelem(hits));

  glBlendFunc(GL_ONE_MINUS_DST_COLOR, GL_ZERO);
  glEnable(GL_BLEND);

  glColor4f(1, 1, 1, 1);
  glBegin(GL_QUADS);
  for (i = 0; i < n; ++i)
  {
   fz_quad thit = fz_transform_quad(hits[i], view_page_ctm);
   glVertex2f(thit.ul.x, thit.ul.y);
   glVertex2f(thit.ur.x, thit.ur.y);
   glVertex2f(thit.lr.x, thit.lr.y);
   glVertex2f(thit.ll.x, thit.ll.y);
  }
  glEnd();

  glDisable(GL_BLEND);


  if (ui.right)
   marking = 0;

  if (!ui.down)
  {
   if (n > 0)
   {
    pdf_clear_annot_quad_points(ctx, selected_annot);
    for (i = 0; i < n; ++i)
     pdf_add_annot_quad_point(ctx, selected_annot, hits[i]);
   }
   marking = 0;
  }
 }
}
