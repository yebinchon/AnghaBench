
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_23__ {int y; int x; } ;
struct TYPE_22__ {int y; int x; } ;
struct TYPE_21__ {int y; int x; } ;
struct TYPE_20__ {int y; int x; } ;
struct TYPE_24__ {TYPE_4__ ll; TYPE_3__ lr; TYPE_2__ ur; TYPE_1__ ul; } ;
typedef TYPE_5__ fz_quad ;
struct TYPE_25__ {int member_1; int member_0; int y; int x; } ;
typedef TYPE_6__ fz_point ;
struct TYPE_26__ {scalar_t__ mod; scalar_t__ right; int y; int x; TYPE_6__* active; TYPE_6__* hot; } ;


 int FZ_SELECT_LINES ;
 int FZ_SELECT_WORDS ;
 scalar_t__ GLUT_ACTIVE_CTRL ;
 scalar_t__ GLUT_ACTIVE_SHIFT ;
 int GL_BLEND ;
 int GL_ONE_MINUS_DST_COLOR ;
 int GL_QUADS ;
 int GL_ZERO ;
 int ctx ;
 char* fz_copy_selection (int ,int ,TYPE_6__,TYPE_6__,int) ;
 int fz_free (int ,char*) ;
 int fz_highlight_selection (int ,int ,TYPE_6__,TYPE_6__,TYPE_5__*,int ) ;
 int fz_snap_selection (int ,int ,TYPE_6__*,TYPE_6__*,int ) ;
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
 TYPE_7__ ui ;
 scalar_t__ ui_mouse_inside (int ) ;
 int ui_set_clipboard (char*) ;
 int view_page_area ;
 int view_page_ctm ;
 int view_page_inv_ctm ;

__attribute__((used)) static void do_page_selection(void)
{
 static fz_point pt = { 0, 0 };
 fz_quad hits[1000];
 int i, n;

 if (ui_mouse_inside(view_page_area))
 {
  ui.hot = &pt;
  if (!ui.active && ui.right)
  {
   ui.active = &pt;
   pt.x = ui.x;
   pt.y = ui.y;
  }
 }

 if (ui.active == &pt)
 {
  fz_point page_a = { pt.x, pt.y };
  fz_point page_b = { ui.x, ui.y };

  page_a = fz_transform_point(page_a, view_page_inv_ctm);
  page_b = fz_transform_point(page_b, view_page_inv_ctm);

  if (ui.mod == GLUT_ACTIVE_CTRL)
   fz_snap_selection(ctx, page_text, &page_a, &page_b, FZ_SELECT_WORDS);
  else if (ui.mod == GLUT_ACTIVE_CTRL + GLUT_ACTIVE_SHIFT)
   fz_snap_selection(ctx, page_text, &page_a, &page_b, FZ_SELECT_LINES);

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

  if (!ui.right)
  {
   char *s;



   s = fz_copy_selection(ctx, page_text, page_a, page_b, 0);

   ui_set_clipboard(s);
   fz_free(ctx, s);
  }
 }
}
