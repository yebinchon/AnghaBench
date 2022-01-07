
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct session {char const* cwd; } ;
struct client {char const* cwd; struct session* session; } ;
struct TYPE_2__ {char const* cwd; } ;


 TYPE_1__* cfg_client ;
 int cfg_finished ;
 char* find_home () ;

const char *
server_client_get_cwd(struct client *c, struct session *s)
{
 const char *home;

 if (!cfg_finished && cfg_client != ((void*)0))
  return (cfg_client->cwd);
 if (c != ((void*)0) && c->session == ((void*)0) && c->cwd != ((void*)0))
  return (c->cwd);
 if (s != ((void*)0) && s->cwd != ((void*)0))
  return (s->cwd);
 if (c != ((void*)0) && (s = c->session) != ((void*)0) && s->cwd != ((void*)0))
  return (s->cwd);
 if ((home = find_home()) != ((void*)0))
  return (home);
 return ("/");
}
