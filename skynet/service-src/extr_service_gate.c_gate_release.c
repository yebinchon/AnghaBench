
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
struct gate {int max_connection; scalar_t__ id; scalar_t__ listen_id; struct gate* conn; int hash; int mp; struct skynet_context* ctx; } ;
struct connection {int max_connection; scalar_t__ id; scalar_t__ listen_id; struct connection* conn; int hash; int mp; struct skynet_context* ctx; } ;


 int hashid_clear (int *) ;
 int messagepool_free (int *) ;
 int skynet_free (struct gate*) ;
 int skynet_socket_close (struct skynet_context*,scalar_t__) ;

void
gate_release(struct gate *g) {
 int i;
 struct skynet_context *ctx = g->ctx;
 for (i=0;i<g->max_connection;i++) {
  struct connection *c = &g->conn[i];
  if (c->id >=0) {
   skynet_socket_close(ctx, c->id);
  }
 }
 if (g->listen_id >= 0) {
  skynet_socket_close(ctx, g->listen_id);
 }
 messagepool_free(&g->mp);
 hashid_clear(&g->hash);
 skynet_free(g->conn);
 skynet_free(g);
}
