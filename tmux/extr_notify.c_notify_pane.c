
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_pane {int dummy; } ;
struct cmd_find_state {int dummy; } ;


 int cmd_find_from_pane (struct cmd_find_state*,struct window_pane*,int ) ;
 int notify_add (char const*,struct cmd_find_state*,int *,int *,int *,struct window_pane*) ;

void
notify_pane(const char *name, struct window_pane *wp)
{
 struct cmd_find_state fs;

 cmd_find_from_pane(&fs, wp, 0);
 notify_add(name, &fs, ((void*)0), ((void*)0), ((void*)0), wp);
}
