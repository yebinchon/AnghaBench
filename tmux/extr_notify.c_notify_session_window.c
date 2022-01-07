
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window {int dummy; } ;
struct session {int dummy; } ;
struct cmd_find_state {int dummy; } ;


 int cmd_find_from_session_window (struct cmd_find_state*,struct session*,struct window*,int ) ;
 int notify_add (char const*,struct cmd_find_state*,int *,struct session*,struct window*,int *) ;

void
notify_session_window(const char *name, struct session *s, struct window *w)
{
 struct cmd_find_state fs;

 cmd_find_from_session_window(&fs, s, w, 0);
 notify_add(name, &fs, ((void*)0), s, w, ((void*)0));
}
