
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attr; int bg; int fg; } ;
struct style {TYPE_1__ gc; } ;
struct options {int dummy; } ;
struct grid_cell {int attr; int bg; int fg; } ;


 int grid_default_cell ;
 int memcpy (struct grid_cell*,int *,int) ;
 struct style* options_get_style (struct options*,char const*) ;

void
style_apply(struct grid_cell *gc, struct options *oo, const char *name)
{
 struct style *sy;

 memcpy(gc, &grid_default_cell, sizeof *gc);
 sy = options_get_style(oo, name);
 gc->fg = sy->gc.fg;
 gc->bg = sy->gc.bg;
 gc->attr |= sy->gc.attr;
}
