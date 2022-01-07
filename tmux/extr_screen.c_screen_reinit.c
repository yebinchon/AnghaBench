
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct screen {int mode; TYPE_1__* grid; scalar_t__ rlower; scalar_t__ rupper; scalar_t__ cy; scalar_t__ cx; } ;
struct TYPE_2__ {int sy; int hsize; } ;


 int MODE_CURSOR ;
 int MODE_WRAP ;
 int grid_clear_lines (TYPE_1__*,int ,int ,int) ;
 int screen_clear_selection (struct screen*) ;
 int screen_free_titles (struct screen*) ;
 int screen_reset_tabs (struct screen*) ;
 scalar_t__ screen_size_y (struct screen*) ;

void
screen_reinit(struct screen *s)
{
 s->cx = 0;
 s->cy = 0;

 s->rupper = 0;
 s->rlower = screen_size_y(s) - 1;

 s->mode = MODE_CURSOR | MODE_WRAP;

 screen_reset_tabs(s);

 grid_clear_lines(s->grid, s->grid->hsize, s->grid->sy, 8);

 screen_clear_selection(s);
 screen_free_titles(s);
}
