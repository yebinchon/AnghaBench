
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cy; int cx; int grid; } ;
struct window_pane {TYPE_2__ base; } ;
struct TYPE_3__ {int data; scalar_t__ size; } ;
struct grid_cell {int flags; TYPE_1__ data; } ;
struct format_tree {struct window_pane* wp; } ;
struct format_entry {int value; } ;


 int GRID_FLAG_PADDING ;
 int grid_view_get_cell (int ,int ,int ,struct grid_cell*) ;
 int xasprintf (int *,char*,int,int ) ;

__attribute__((used)) static void
format_cb_cursor_character(struct format_tree *ft, struct format_entry *fe)
{
 struct window_pane *wp = ft->wp;
 struct grid_cell gc;

 if (wp == ((void*)0))
  return;

 grid_view_get_cell(wp->base.grid, wp->base.cx, wp->base.cy, &gc);
 if (~gc.flags & GRID_FLAG_PADDING)
  xasprintf(&fe->value, "%.*s", (int)gc.data.size, gc.data.data);
}
