
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct slave {scalar_t__ fd; scalar_t__ status; int * queue; } ;
struct skynet_context {int dummy; } ;
struct remote_message_header {int source; int destination; int session; } ;
struct harbor {int id; struct slave* s; struct skynet_context* ctx; } ;


 int HANDLE_MASK ;
 int HANDLE_REMOTE_SHIFT ;
 int PTYPE_ERROR ;
 int PTYPE_TAG_DONTCOPY ;
 scalar_t__ STATUS_DOWN ;
 scalar_t__ STATUS_HANDSHAKE ;
 int * new_queue () ;
 int push_queue (int *,void*,size_t,struct remote_message_header*) ;
 int send_remote (struct skynet_context*,scalar_t__,char const*,size_t,struct remote_message_header*) ;
 int skynet_error (struct skynet_context*,char*,int,int,int,int,int) ;
 int skynet_send (struct skynet_context*,int,int,int,int,void*,size_t) ;

__attribute__((used)) static int
remote_send_handle(struct harbor *h, uint32_t source, uint32_t destination, int type, int session, const char * msg, size_t sz) {
 int harbor_id = destination >> HANDLE_REMOTE_SHIFT;
 struct skynet_context * context = h->ctx;
 if (harbor_id == h->id) {

  skynet_send(context, source, destination , type | PTYPE_TAG_DONTCOPY, session, (void *)msg, sz);
  return 1;
 }

 struct slave * s = &h->s[harbor_id];
 if (s->fd == 0 || s->status == STATUS_HANDSHAKE) {
  if (s->status == STATUS_DOWN) {


   skynet_send(context, destination, source, PTYPE_ERROR, 0 , ((void*)0), 0);
   skynet_error(context, "Drop message to harbor %d from %x to %x (session = %d, msgsz = %d)",harbor_id, source, destination,session,(int)sz);
  } else {
   if (s->queue == ((void*)0)) {
    s->queue = new_queue();
   }
   struct remote_message_header header;
   header.source = source;
   header.destination = (type << HANDLE_REMOTE_SHIFT) | (destination & HANDLE_MASK);
   header.session = (uint32_t)session;
   push_queue(s->queue, (void *)msg, sz, &header);
   return 1;
  }
 } else {
  struct remote_message_header cookie;
  cookie.source = source;
  cookie.destination = (destination & HANDLE_MASK) | ((uint32_t)type << HANDLE_REMOTE_SHIFT);
  cookie.session = (uint32_t)session;
  send_remote(context, s->fd, msg,sz,&cookie);
 }

 return 0;
}
