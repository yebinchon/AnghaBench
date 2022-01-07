
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_socket_message {int type; int id; int ud; int buffer; } ;
struct skynet_context {int dummy; } ;
struct gate {int listen_id; int hash; struct connection* conn; int mp; struct skynet_context* ctx; } ;
struct connection {int id; char* remote_name; int buffer; } ;
 int _report (struct gate*,char*,int,...) ;
 int assert (int) ;
 int databuffer_clear (int *,int *) ;
 int dispatch_message (struct gate*,struct connection*,int,int ,int) ;
 int hashid_full (int *) ;
 size_t hashid_insert (int *,int) ;
 int hashid_lookup (int *,int) ;
 int hashid_remove (int *,int) ;
 int memcpy (char*,struct skynet_socket_message const*,int) ;
 int memset (struct connection*,int ,int) ;
 int skynet_error (struct skynet_context*,char*,int,...) ;
 int skynet_free (int ) ;
 int skynet_socket_close (struct skynet_context*,int) ;

__attribute__((used)) static void
dispatch_socket_message(struct gate *g, const struct skynet_socket_message * message, int sz) {
 struct skynet_context * ctx = g->ctx;
 switch(message->type) {
 case 130: {
  int id = hashid_lookup(&g->hash, message->id);
  if (id>=0) {
   struct connection *c = &g->conn[id];
   dispatch_message(g, c, message->id, message->buffer, message->ud);
  } else {
   skynet_error(ctx, "Drop unknown connection %d message", message->id);
   skynet_socket_close(ctx, message->id);
   skynet_free(message->buffer);
  }
  break;
 }
 case 131: {
  if (message->id == g->listen_id) {

   break;
  }
  int id = hashid_lookup(&g->hash, message->id);
  if (id<0) {
   skynet_error(ctx, "Close unknown connection %d", message->id);
   skynet_socket_close(ctx, message->id);
  }
  break;
 }
 case 132:
 case 129: {
  int id = hashid_remove(&g->hash, message->id);
  if (id>=0) {
   struct connection *c = &g->conn[id];
   databuffer_clear(&c->buffer,&g->mp);
   memset(c, 0, sizeof(*c));
   c->id = -1;
   _report(g, "%d close", message->id);
  }
  break;
 }
 case 133:

  assert(g->listen_id == message->id);
  if (hashid_full(&g->hash)) {
   skynet_socket_close(ctx, message->ud);
  } else {
   struct connection *c = &g->conn[hashid_insert(&g->hash, message->ud)];
   if (sz >= sizeof(c->remote_name)) {
    sz = sizeof(c->remote_name) - 1;
   }
   c->id = message->ud;
   memcpy(c->remote_name, message+1, sz);
   c->remote_name[sz] = '\0';
   _report(g, "%d open %d %s:0",c->id, c->id, c->remote_name);
   skynet_error(ctx, "socket open: %x", c->id);
  }
  break;
 case 128:
  skynet_error(ctx, "fd (%d) send buffer (%d)K", message->id, message->ud);
  break;
 }
}
