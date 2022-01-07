
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen_write_ctx {struct screen* s; } ;
struct screen {int mode; int cy; int cx; } ;
struct input_ctx {int old_mode; int old_cy; int old_cx; int cell; int old_cell; struct screen_write_ctx ctx; } ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
input_save_state(struct input_ctx *ictx)
{
 struct screen_write_ctx *sctx = &ictx->ctx;
 struct screen *s = sctx->s;

 memcpy(&ictx->old_cell, &ictx->cell, sizeof ictx->old_cell);
 ictx->old_cx = s->cx;
 ictx->old_cy = s->cy;
 ictx->old_mode = s->mode;
}
