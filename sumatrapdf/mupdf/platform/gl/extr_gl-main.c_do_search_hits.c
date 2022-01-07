
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int y; int x; } ;
struct TYPE_9__ {int y; int x; } ;
struct TYPE_8__ {int y; int x; } ;
struct TYPE_7__ {int y; int x; } ;
struct TYPE_11__ {TYPE_4__ ll; TYPE_3__ lr; TYPE_2__ ur; TYPE_1__ ul; } ;
typedef TYPE_5__ fz_quad ;


 int GL_BLEND ;
 int GL_ONE ;
 int GL_ONE_MINUS_SRC_ALPHA ;
 int GL_QUADS ;
 TYPE_5__ fz_transform_quad (int ,int ) ;
 int glBegin (int ) ;
 int glBlendFunc (int ,int ) ;
 int glColor4f (int,int ,int ,float) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glEnd () ;
 int glVertex2f (int ,int ) ;
 int search_hit_count ;
 int * search_hit_quads ;
 int view_page_ctm ;

__attribute__((used)) static void do_search_hits(void)
{
 int i;

 glBlendFunc(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
 glEnable(GL_BLEND);

 glColor4f(1, 0, 0, 0.4f);
 glBegin(GL_QUADS);
 for (i = 0; i < search_hit_count; ++i)
 {
  fz_quad thit = fz_transform_quad(search_hit_quads[i], view_page_ctm);
  glVertex2f(thit.ul.x, thit.ul.y);
  glVertex2f(thit.ur.x, thit.ur.y);
  glVertex2f(thit.lr.x, thit.lr.y);
  glVertex2f(thit.ll.x, thit.ll.y);
 }

 glEnd();
 glDisable(GL_BLEND);
}
