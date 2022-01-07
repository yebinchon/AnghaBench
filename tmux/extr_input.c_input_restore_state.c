
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct screen_write_ctx {int dummy; } ;
struct input_ctx {int old_mode; int old_cy; int old_cx; int old_cell; int cell; struct screen_write_ctx ctx; } ;


 int MODE_ORIGIN ;
 int memcpy (int *,int *,int) ;
 int screen_write_cursormove (struct screen_write_ctx*,int ,int ,int ) ;
 int screen_write_mode_clear (struct screen_write_ctx*,int) ;
 int screen_write_mode_set (struct screen_write_ctx*,int) ;

__attribute__((used)) static void
input_restore_state(struct input_ctx *ictx)
{
 struct screen_write_ctx *sctx = &ictx->ctx;

 memcpy(&ictx->cell, &ictx->old_cell, sizeof ictx->cell);
 if (ictx->old_mode & MODE_ORIGIN)
  screen_write_mode_set(sctx, MODE_ORIGIN);
 else
  screen_write_mode_clear(sctx, MODE_ORIGIN);
 screen_write_cursormove(sctx, ictx->old_cx, ictx->old_cy, 0);
}
