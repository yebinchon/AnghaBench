
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
struct skynet_config {char* logservice; scalar_t__ daemon; int thread; int bootstrap; int logger; int profile; int module_path; int harbor; } ;
struct sigaction {int sa_mask; int sa_flags; int * sa_handler; } ;


 int SA_RESTART ;
 int SIGHUP ;
 int bootstrap (struct skynet_context*,int ) ;
 int daemon_exit (scalar_t__) ;
 scalar_t__ daemon_init (scalar_t__) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int handle_hup ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigfillset (int *) ;
 int skynet_context_handle (struct skynet_context*) ;
 struct skynet_context* skynet_context_new (char*,int ) ;
 int skynet_handle_init (int ) ;
 int skynet_handle_namehandle (int ,char*) ;
 int skynet_harbor_exit () ;
 int skynet_harbor_init (int ) ;
 int skynet_module_init (int ) ;
 int skynet_mq_init () ;
 int skynet_profile_enable (int ) ;
 int skynet_socket_free () ;
 int skynet_socket_init () ;
 int skynet_timer_init () ;
 int start (int ) ;
 int stderr ;

void
skynet_start(struct skynet_config * config) {

 struct sigaction sa;
 sa.sa_handler = &handle_hup;
 sa.sa_flags = SA_RESTART;
 sigfillset(&sa.sa_mask);
 sigaction(SIGHUP, &sa, ((void*)0));

 if (config->daemon) {
  if (daemon_init(config->daemon)) {
   exit(1);
  }
 }
 skynet_harbor_init(config->harbor);
 skynet_handle_init(config->harbor);
 skynet_mq_init();
 skynet_module_init(config->module_path);
 skynet_timer_init();
 skynet_socket_init();
 skynet_profile_enable(config->profile);

 struct skynet_context *ctx = skynet_context_new(config->logservice, config->logger);
 if (ctx == ((void*)0)) {
  fprintf(stderr, "Can't launch %s service\n", config->logservice);
  exit(1);
 }

 skynet_handle_namehandle(skynet_context_handle(ctx), "logger");

 bootstrap(ctx, config->bootstrap);

 start(config->thread);


 skynet_harbor_exit();
 skynet_socket_free();
 if (config->daemon) {
  daemon_exit(config->daemon);
 }
}
