
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8_t ;
typedef int tcpip_callback_fn ;
struct TYPE_4__ {void* ctx; int function; } ;
struct TYPE_3__ {TYPE_2__ cb; } ;
struct tcpip_msg {TYPE_1__ msg; int type; } ;
typedef scalar_t__ err_t ;


 scalar_t__ ERR_MEM ;
 scalar_t__ ERR_OK ;
 scalar_t__ ERR_VAL ;
 int MEMP_TCPIP_MSG_API ;
 int TCPIP_MSG_CALLBACK ;
 int mbox ;
 int memp_free (int ,struct tcpip_msg*) ;
 scalar_t__ memp_malloc (int ) ;
 int sys_mbox_post (int *,struct tcpip_msg*) ;
 scalar_t__ sys_mbox_trypost (int *,struct tcpip_msg*) ;
 scalar_t__ sys_mbox_valid (int *) ;

err_t
tcpip_callback_with_block(tcpip_callback_fn function, void *ctx, u8_t block)
{
  struct tcpip_msg *msg;

  if (sys_mbox_valid(&mbox)) {
    msg = (struct tcpip_msg *)memp_malloc(MEMP_TCPIP_MSG_API);
    if (msg == ((void*)0)) {
      return ERR_MEM;
    }

    msg->type = TCPIP_MSG_CALLBACK;
    msg->msg.cb.function = function;
    msg->msg.cb.ctx = ctx;
    if (block) {
      sys_mbox_post(&mbox, msg);
    } else {
      if (sys_mbox_trypost(&mbox, msg) != ERR_OK) {
        memp_free(MEMP_TCPIP_MSG_API, msg);
        return ERR_MEM;
      }
    }
    return ERR_OK;
  }
  return ERR_VAL;
}
