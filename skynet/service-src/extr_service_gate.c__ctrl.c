
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct skynet_context {int dummy; } ;
struct gate {int listen_id; int hash; int broker; struct skynet_context* ctx; } ;


 int _forward_agent (struct gate*,int,int ,int ) ;
 int _parm (char*,int,int) ;
 int hashid_lookup (int *,int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (char*,void const*,int) ;
 int skynet_error (struct skynet_context*,char*,char*) ;
 int skynet_queryname (struct skynet_context*,char*) ;
 int skynet_socket_close (struct skynet_context*,int) ;
 int skynet_socket_start (struct skynet_context*,int) ;
 char* strsep (char**,char*) ;
 int strtol (char*,int *,int) ;
 int strtoul (char*,int *,int) ;

__attribute__((used)) static void
_ctrl(struct gate * g, const void * msg, int sz) {
 struct skynet_context * ctx = g->ctx;
 char tmp[sz+1];
 memcpy(tmp, msg, sz);
 tmp[sz] = '\0';
 char * command = tmp;
 int i;
 if (sz == 0)
  return;
 for (i=0;i<sz;i++) {
  if (command[i]==' ') {
   break;
  }
 }
 if (memcmp(command,"kick",i)==0) {
  _parm(tmp, sz, i);
  int uid = strtol(command , ((void*)0), 10);
  int id = hashid_lookup(&g->hash, uid);
  if (id>=0) {
   skynet_socket_close(ctx, uid);
  }
  return;
 }
 if (memcmp(command,"forward",i)==0) {
  _parm(tmp, sz, i);
  char * client = tmp;
  char * idstr = strsep(&client, " ");
  if (client == ((void*)0)) {
   return;
  }
  int id = strtol(idstr , ((void*)0), 10);
  char * agent = strsep(&client, " ");
  if (client == ((void*)0)) {
   return;
  }
  uint32_t agent_handle = strtoul(agent+1, ((void*)0), 16);
  uint32_t client_handle = strtoul(client+1, ((void*)0), 16);
  _forward_agent(g, id, agent_handle, client_handle);
  return;
 }
 if (memcmp(command,"broker",i)==0) {
  _parm(tmp, sz, i);
  g->broker = skynet_queryname(ctx, command);
  return;
 }
 if (memcmp(command,"start",i) == 0) {
  _parm(tmp, sz, i);
  int uid = strtol(command , ((void*)0), 10);
  int id = hashid_lookup(&g->hash, uid);
  if (id>=0) {
   skynet_socket_start(ctx, uid);
  }
  return;
 }
 if (memcmp(command, "close", i) == 0) {
  if (g->listen_id >= 0) {
   skynet_socket_close(ctx, g->listen_id);
   g->listen_id = -1;
  }
  return;
 }
 skynet_error(ctx, "[gate] Unkown command : %s", command);
}
