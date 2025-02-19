
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int id; int environ; } ;
struct environ {int dummy; } ;


 int environ_copy (int ,struct environ*) ;
 struct environ* environ_create () ;
 int environ_set (struct environ*,char*,char*,char const*,...) ;
 scalar_t__ getpid () ;
 int global_environ ;
 int global_options ;
 char* options_get_string (int ,char*) ;
 int socket_path ;

struct environ *
environ_for_session(struct session *s, int no_TERM)
{
 struct environ *env;
 const char *value;
 int idx;

 env = environ_create();
 environ_copy(global_environ, env);
 if (s != ((void*)0))
  environ_copy(s->environ, env);

 if (!no_TERM) {
  value = options_get_string(global_options, "default-terminal");
  environ_set(env, "TERM", "%s", value);
 }

 if (s != ((void*)0))
  idx = s->id;
 else
  idx = -1;
 environ_set(env, "TMUX", "%s,%ld,%d", socket_path, (long)getpid(), idx);

 return (env);
}
