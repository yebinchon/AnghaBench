
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
struct gate {int listen_id; struct skynet_context* ctx; } ;


 int BACKLOG ;
 int skynet_error (struct skynet_context*,char*,char*) ;
 int skynet_socket_listen (struct skynet_context*,char const*,int,int ) ;
 int skynet_socket_start (struct skynet_context*,int ) ;
 char* strrchr (char*,char) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static int
start_listen(struct gate *g, char * listen_addr) {
 struct skynet_context * ctx = g->ctx;
 char * portstr = strrchr(listen_addr,':');
 const char * host = "";
 int port;
 if (portstr == ((void*)0)) {
  port = strtol(listen_addr, ((void*)0), 10);
  if (port <= 0) {
   skynet_error(ctx, "Invalid gate address %s",listen_addr);
   return 1;
  }
 } else {
  port = strtol(portstr + 1, ((void*)0), 10);
  if (port <= 0) {
   skynet_error(ctx, "Invalid gate address %s",listen_addr);
   return 1;
  }
  portstr[0] = '\0';
  host = listen_addr;
 }
 g->listen_id = skynet_socket_listen(ctx, host, port, BACKLOG);
 if (g->listen_id < 0) {
  return 1;
 }
 skynet_socket_start(ctx, g->listen_id);
 return 0;
}
