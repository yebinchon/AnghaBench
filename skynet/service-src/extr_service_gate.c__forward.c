
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skynet_context {int dummy; } ;
struct gate {int client_tag; int watchdog; int mp; int broker; struct skynet_context* ctx; } ;
struct connection {int id; int buffer; int agent; int client; } ;


 int PTYPE_TAG_DONTCOPY ;
 int PTYPE_TEXT ;
 int databuffer_read (int *,int *,char*,int) ;
 void* skynet_malloc (int) ;
 int skynet_send (struct skynet_context*,int ,int ,int,int,char*,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
_forward(struct gate *g, struct connection * c, int size) {
 struct skynet_context * ctx = g->ctx;
 int fd = c->id;
 if (fd <= 0) {

  return;
 }
 if (g->broker) {
  void * temp = skynet_malloc(size);
  databuffer_read(&c->buffer,&g->mp,temp, size);
  skynet_send(ctx, 0, g->broker, g->client_tag | PTYPE_TAG_DONTCOPY, fd, temp, size);
  return;
 }
 if (c->agent) {
  void * temp = skynet_malloc(size);
  databuffer_read(&c->buffer,&g->mp,temp, size);
  skynet_send(ctx, c->client, c->agent, g->client_tag | PTYPE_TAG_DONTCOPY, fd , temp, size);
 } else if (g->watchdog) {
  char * tmp = skynet_malloc(size + 32);
  int n = snprintf(tmp,32,"%d data ",c->id);
  databuffer_read(&c->buffer,&g->mp,tmp+n,size);
  skynet_send(ctx, 0, g->watchdog, PTYPE_TEXT | PTYPE_TAG_DONTCOPY, fd, tmp, size + n);
 }
}
