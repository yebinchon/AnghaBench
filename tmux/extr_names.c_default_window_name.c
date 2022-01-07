
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct window {TYPE_1__* active; } ;
struct TYPE_2__ {char* shell; int argv; int argc; } ;


 char* cmd_stringify_argv (int ,int ) ;
 int free (char*) ;
 char* parse_window_name (char*) ;

char *
default_window_name(struct window *w)
{
 char *cmd, *s;

 cmd = cmd_stringify_argv(w->active->argc, w->active->argv);
 if (cmd != ((void*)0) && *cmd != '\0')
  s = parse_window_name(cmd);
 else
  s = parse_window_name(w->active->shell);
 free(cmd);
 return (s);
}
