
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_matrix ;
struct TYPE_3__ {int t3matrix; int ** t3lists; } ;
typedef TYPE_1__ fz_font ;
typedef int fz_display_list ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_concat (int ,int ) ;
 int fz_infinite_rect ;
 int fz_run_display_list (int *,int *,int *,int ,int ,int *) ;

void
fz_run_t3_glyph(fz_context *ctx, fz_font *font, int gid, fz_matrix trm, fz_device *dev)
{
 fz_display_list *list;
 fz_matrix ctm;

 list = font->t3lists[gid];
 if (!list)
  return;

 ctm = fz_concat(font->t3matrix, trm);
 fz_run_display_list(ctx, list, dev, ctm, fz_infinite_rect, ((void*)0));
}
