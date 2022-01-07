
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int dummy; } ;


 int CMD_PARSE_QUIET ;
 struct client* TAILQ_FIRST (int *) ;
 int * TMUX_CONF ;
 struct client* cfg_client ;
 int cfg_client_done ;
 int cfg_done ;
 int * cfg_file ;
 int cfg_item ;
 int clients ;
 int cmdq_append (struct client*,int ) ;
 int cmdq_get_callback (int ,int *) ;
 char* find_home () ;
 int load_cfg (int *,struct client*,int *,int,int *) ;
 int xasprintf (int **,char*,char const*) ;

void
start_cfg(void)
{
 const char *home;
 int flags = 0;
 struct client *c;
 cfg_client = c = TAILQ_FIRST(&clients);
 if (c != ((void*)0)) {
  cfg_item = cmdq_get_callback(cfg_client_done, ((void*)0));
  cmdq_append(c, cfg_item);
 }

 if (cfg_file == ((void*)0))
  load_cfg(TMUX_CONF, c, ((void*)0), CMD_PARSE_QUIET, ((void*)0));

 if (cfg_file == ((void*)0) && (home = find_home()) != ((void*)0)) {
  xasprintf(&cfg_file, "%s/.tmux.conf", home);
  flags = CMD_PARSE_QUIET;
 }
 if (cfg_file != ((void*)0))
  load_cfg(cfg_file, c, ((void*)0), flags, ((void*)0));

 cmdq_append(((void*)0), cmdq_get_callback(cfg_done, ((void*)0)));
}
