
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int dummy; } ;
struct cmd_find_state {int dummy; } ;


 int cmd_find_from_nothing (struct cmd_find_state*,int ) ;
 int cmd_find_from_session (struct cmd_find_state*,struct session*,int ) ;
 int notify_add (char const*,struct cmd_find_state*,int *,struct session*,int *,int *) ;
 scalar_t__ session_alive (struct session*) ;

void
notify_session(const char *name, struct session *s)
{
 struct cmd_find_state fs;

 if (session_alive(s))
  cmd_find_from_session(&fs, s, 0);
 else
  cmd_find_from_nothing(&fs, 0);
 notify_add(name, &fs, ((void*)0), s, ((void*)0), ((void*)0));
}
