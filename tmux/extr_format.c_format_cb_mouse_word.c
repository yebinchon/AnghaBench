
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int grid; } ;
struct window_pane {TYPE_1__ base; int modes; } ;
struct TYPE_5__ {int valid; } ;
struct format_tree {TYPE_2__ m; } ;
struct format_entry {char* value; } ;


 int TAILQ_EMPTY (int *) ;
 scalar_t__ cmd_mouse_at (struct window_pane*,TYPE_2__*,int *,int *,int ) ;
 struct window_pane* cmd_mouse_pane (TYPE_2__*,int *,int *) ;
 char* format_grid_word (int ,int ,int ) ;

__attribute__((used)) static void
format_cb_mouse_word(struct format_tree *ft, struct format_entry *fe)
{
 struct window_pane *wp;
 u_int x, y;
 char *s;

 if (!ft->m.valid)
  return;
 wp = cmd_mouse_pane(&ft->m, ((void*)0), ((void*)0));
 if (wp == ((void*)0))
  return;
 if (!TAILQ_EMPTY (&wp->modes))
  return;
 if (cmd_mouse_at(wp, &ft->m, &x, &y, 0) != 0)
  return;

 s = format_grid_word(wp->base.grid, x, y);
 if (s != ((void*)0))
  fe->value = s;
}
