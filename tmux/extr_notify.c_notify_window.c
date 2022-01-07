
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int dummy; } ;
struct cmd_find_state {int dummy; } ;


 int cmd_find_from_window (struct cmd_find_state*,struct window*,int ) ;
 int notify_add (char const*,struct cmd_find_state*,int *,int *,struct window*,int *) ;

void
notify_window(const char *name, struct window *w)
{
 struct cmd_find_state fs;

 cmd_find_from_window(&fs, w, 0);
 notify_add(name, &fs, ((void*)0), ((void*)0), w, ((void*)0));
}
