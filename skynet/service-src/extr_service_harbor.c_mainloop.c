
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct skynet_socket_message {void* buffer; int ud; int id; int type; } ;
struct skynet_context {int dummy; } ;
struct TYPE_2__ {int handle; int name; } ;
struct remote_message {scalar_t__ message; int sz; int type; TYPE_1__ destination; } ;
struct harbor {int dummy; } ;


 int PTYPE_ERROR ;
 int harbor_command (struct harbor*,void const*,size_t,int,int) ;
 int harbor_id (struct harbor*,int ) ;
 int push_socket_data (struct harbor*,struct skynet_socket_message const*) ;
 int remote_send_handle (struct harbor*,int,int ,int ,int,scalar_t__,int ) ;
 int remote_send_name (struct harbor*,int,int ,int ,int,scalar_t__,int ) ;
 int report_harbor_down (struct harbor*,int) ;
 int skynet_error (struct skynet_context*,char*,int,...) ;
 int skynet_free (void*) ;
 int skynet_send (struct skynet_context*,int ,int,int,int,int *,int ) ;

__attribute__((used)) static int
mainloop(struct skynet_context * context, void * ud, int type, int session, uint32_t source, const void * msg, size_t sz) {
 struct harbor * h = ud;
 switch (type) {
 case 134: {
  const struct skynet_socket_message * message = msg;
  switch(message->type) {
  case 130:
   push_socket_data(h, message);
   skynet_free(message->buffer);
   break;
  case 129:
  case 132: {
   int id = harbor_id(h, message->id);
   if (id) {
    report_harbor_down(h,id);
   } else {
    skynet_error(context, "Unkown fd (%d) closed", message->id);
   }
   break;
  }
  case 131:

   break;
  case 128: {
   int id = harbor_id(h, message->id);
   if (id) {
    skynet_error(context, "message havn't send to Harbor (%d) reach %d K", id, message->ud);
   }
   break;
  }
  default:
   skynet_error(context, "recv invalid socket message type %d", type);
   break;
  }
  return 0;
 }
 case 135: {
  harbor_command(h, msg,sz,session,source);
  return 0;
 }
 case 133 : {

  const struct remote_message *rmsg = msg;
  if (rmsg->destination.handle == 0) {
   if (remote_send_name(h, source , rmsg->destination.name, rmsg->type, session, rmsg->message, rmsg->sz)) {
    return 0;
   }
  } else {
   if (remote_send_handle(h, source , rmsg->destination.handle, rmsg->type, session, rmsg->message, rmsg->sz)) {
    return 0;
   }
  }
  skynet_free((void *)rmsg->message);
  return 0;
 }
 default:
  skynet_error(context, "recv invalid message from %x,  type = %d", source, type);
  if (session != 0 && type != PTYPE_ERROR) {
   skynet_send(context,0,source,PTYPE_ERROR, session, ((void*)0), 0);
  }
  return 0;
 }
}
