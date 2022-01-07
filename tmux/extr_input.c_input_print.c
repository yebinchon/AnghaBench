
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct screen_write_ctx {int dummy; } ;
struct TYPE_4__ {int attr; int data; } ;
struct TYPE_3__ {int g0set; int g1set; TYPE_2__ cell; int set; } ;
struct input_ctx {TYPE_1__ cell; int ch; int last; scalar_t__ utf8started; struct screen_write_ctx ctx; } ;


 int GRID_ATTR_CHARSET ;
 int screen_write_collect_add (struct screen_write_ctx*,TYPE_2__*) ;
 int utf8_set (int *,int ) ;

__attribute__((used)) static int
input_print(struct input_ctx *ictx)
{
 struct screen_write_ctx *sctx = &ictx->ctx;
 int set;

 ictx->utf8started = 0;

 set = ictx->cell.set == 0 ? ictx->cell.g0set : ictx->cell.g1set;
 if (set == 1)
  ictx->cell.cell.attr |= GRID_ATTR_CHARSET;
 else
  ictx->cell.cell.attr &= ~GRID_ATTR_CHARSET;

 utf8_set(&ictx->cell.cell.data, ictx->ch);
 screen_write_collect_add(sctx, &ictx->cell.cell);
 ictx->last = ictx->ch;

 ictx->cell.cell.attr &= ~GRID_ATTR_CHARSET;

 return (0);
}
