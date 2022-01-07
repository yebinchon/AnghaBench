
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct screen {int dummy; } ;
struct mode_tree_data {TYPE_1__* wp; struct screen screen; } ;
struct TYPE_2__ {int flags; } ;


 int PANE_REDRAW ;
 int mode_tree_build (struct mode_tree_data*) ;
 int mode_tree_draw (struct mode_tree_data*) ;
 int screen_resize (struct screen*,int ,int ,int ) ;

void
mode_tree_resize(struct mode_tree_data *mtd, u_int sx, u_int sy)
{
 struct screen *s = &mtd->screen;

 screen_resize(s, sx, sy, 0);

 mode_tree_build(mtd);
 mode_tree_draw(mtd);

 mtd->wp->flags |= PANE_REDRAW;
}
