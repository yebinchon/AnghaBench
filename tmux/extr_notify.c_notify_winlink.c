
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winlink {int window; int session; } ;
struct cmd_find_state {int dummy; } ;


 int cmd_find_from_winlink (struct cmd_find_state*,struct winlink*,int ) ;
 int notify_add (char const*,struct cmd_find_state*,int *,int ,int ,int *) ;

void
notify_winlink(const char *name, struct winlink *wl)
{
 struct cmd_find_state fs;

 cmd_find_from_winlink(&fs, wl, 0);
 notify_add(name, &fs, ((void*)0), wl->session, wl->window, ((void*)0));
}
