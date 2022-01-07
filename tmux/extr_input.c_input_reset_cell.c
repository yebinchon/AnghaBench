
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ g1set; scalar_t__ g0set; scalar_t__ set; int cell; } ;
struct input_ctx {scalar_t__ old_cy; scalar_t__ old_cx; TYPE_1__ cell; int old_cell; } ;


 TYPE_1__ grid_default_cell ;
 int memcpy (int *,TYPE_1__*,int) ;

__attribute__((used)) static void
input_reset_cell(struct input_ctx *ictx)
{
 memcpy(&ictx->cell.cell, &grid_default_cell, sizeof ictx->cell.cell);
 ictx->cell.set = 0;
 ictx->cell.g0set = ictx->cell.g1set = 0;

 memcpy(&ictx->old_cell, &ictx->cell, sizeof ictx->old_cell);
 ictx->old_cx = 0;
 ictx->old_cy = 0;
}
