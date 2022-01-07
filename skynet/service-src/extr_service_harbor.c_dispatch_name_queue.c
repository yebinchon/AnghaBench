
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct slave {int fd; scalar_t__ status; struct harbor_msg_queue* queue; } ;
struct skynet_context {int dummy; } ;
struct keyvalue {int value; struct harbor_msg_queue* queue; int key; } ;
struct harbor_msg_queue {int dummy; } ;
struct TYPE_2__ {int destination; int session; int source; } ;
struct harbor_msg {int buffer; TYPE_1__ header; int size; } ;
struct harbor {int slave; struct slave* s; struct skynet_context* ctx; } ;


 int GLOBALNAME_LENGTH ;
 int HANDLE_MASK ;
 int HANDLE_REMOTE_SHIFT ;
 int PTYPE_TAG_DONTCOPY ;
 scalar_t__ STATUS_DOWN ;
 int memcpy (char*,int ,int) ;
 struct harbor_msg* pop_queue (struct harbor_msg_queue*) ;
 int push_queue_msg (struct harbor_msg_queue*,struct harbor_msg*) ;
 int release_queue (struct harbor_msg_queue*) ;
 int send_remote (struct skynet_context*,int,int ,int ,TYPE_1__*) ;
 int skynet_error (struct skynet_context*,char*,char*,int) ;
 int skynet_free (int ) ;
 int skynet_send (struct skynet_context*,int ,int,int,int ,int ,int ) ;

__attribute__((used)) static void
dispatch_name_queue(struct harbor *h, struct keyvalue * node) {
 struct harbor_msg_queue * queue = node->queue;
 uint32_t handle = node->value;
 int harbor_id = handle >> HANDLE_REMOTE_SHIFT;
 struct skynet_context * context = h->ctx;
 struct slave *s = &h->s[harbor_id];
 int fd = s->fd;
 if (fd == 0) {
  if (s->status == STATUS_DOWN) {
   char tmp [GLOBALNAME_LENGTH+1];
   memcpy(tmp, node->key, GLOBALNAME_LENGTH);
   tmp[GLOBALNAME_LENGTH] = '\0';
   skynet_error(context, "Drop message to %s (in harbor %d)",tmp,harbor_id);
  } else {
   if (s->queue == ((void*)0)) {
    s->queue = node->queue;
    node->queue = ((void*)0);
   } else {
    struct harbor_msg * m;
    while ((m = pop_queue(queue))!=((void*)0)) {
     push_queue_msg(s->queue, m);
    }
   }
   if (harbor_id == (h->slave >> HANDLE_REMOTE_SHIFT)) {

    struct harbor_msg * m;
    while ((m = pop_queue(s->queue)) != ((void*)0)) {
     int type = m->header.destination >> HANDLE_REMOTE_SHIFT;
     skynet_send(context, m->header.source, handle , type | PTYPE_TAG_DONTCOPY, m->header.session, m->buffer, m->size);
    }
    release_queue(s->queue);
    s->queue = ((void*)0);
   }
  }
  return;
 }
 struct harbor_msg * m;
 while ((m = pop_queue(queue)) != ((void*)0)) {
  m->header.destination |= (handle & HANDLE_MASK);
  send_remote(context, fd, m->buffer, m->size, &m->header);
  skynet_free(m->buffer);
 }
}
