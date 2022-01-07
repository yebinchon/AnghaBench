
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int ctx; int (* function ) (int ) ;} ;
struct TYPE_12__ {int arg; int h; int msecs; } ;
struct TYPE_10__ {TYPE_7__* netif; int p; } ;
struct TYPE_14__ {TYPE_5__ cb; TYPE_4__ tmo; TYPE_3__* netifapimsg; TYPE_2__ inp; TYPE_1__* apimsg; } ;
struct tcpip_msg {int type; TYPE_6__ msg; } ;
struct TYPE_15__ {int flags; } ;
struct TYPE_11__ {int msg; int (* function ) (int *) ;} ;
struct TYPE_9__ {int msg; int (* function ) (int *) ;} ;


 int LOCK_TCPIP_CORE () ;
 int LWIP_ASSERT (char*,int ) ;
 int LWIP_DEBUGF (int ,char*) ;
 int LWIP_TCPIP_THREAD_ALIVE () ;
 int LWIP_UNUSED_ARG (void*) ;
 int MEMP_TCPIP_MSG_API ;
 int MEMP_TCPIP_MSG_INPKT ;
 int NETIF_FLAG_ETHARP ;
 int NETIF_FLAG_ETHERNET ;
 int TCPIP_DEBUG ;







 int UNLOCK_TCPIP_CORE () ;
 int ethernet_input (int ,TYPE_7__*) ;
 int ip_input (int ,TYPE_7__*) ;
 int mbox ;
 int memp_free (int ,struct tcpip_msg*) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int ) ;
 int stub4 (int ) ;
 int sys_timeout (int ,int ,int ) ;
 int sys_timeouts_mbox_fetch (int *,void**) ;
 int sys_untimeout (int ,int ) ;
 int tcpip_init_done (int ) ;
 int tcpip_init_done_arg ;

__attribute__((used)) static void
tcpip_thread(void *arg)
{
  struct tcpip_msg *msg;
  LWIP_UNUSED_ARG(arg);

  if (tcpip_init_done != ((void*)0)) {
    tcpip_init_done(tcpip_init_done_arg);
  }

  LOCK_TCPIP_CORE();
  while (1) {
    UNLOCK_TCPIP_CORE();
    LWIP_TCPIP_THREAD_ALIVE();

    sys_timeouts_mbox_fetch(&mbox, (void **)&msg);
    LOCK_TCPIP_CORE();
    switch (msg->type) {
    case 131:
      LWIP_DEBUGF(TCPIP_DEBUG, ("tcpip_thread: PACKET %p\n", (void *)msg));





      {
        ip_input(msg->msg.inp.p, msg->msg.inp.netif);
      }
      memp_free(MEMP_TCPIP_MSG_INPKT, msg);
      break;
    case 133:
      LWIP_DEBUGF(TCPIP_DEBUG, ("tcpip_thread: CALLBACK %p\n", (void *)msg));
      msg->msg.cb.function(msg->msg.cb.ctx);
      memp_free(MEMP_TCPIP_MSG_API, msg);
      break;

    case 132:
      LWIP_DEBUGF(TCPIP_DEBUG, ("tcpip_thread: CALLBACK_STATIC %p\n", (void *)msg));
      msg->msg.cb.function(msg->msg.cb.ctx);
      break;

    default:
      LWIP_DEBUGF(TCPIP_DEBUG, ("tcpip_thread: invalid message: %d\n", msg->type));
      LWIP_ASSERT("tcpip_thread: invalid message", 0);
      break;
    }
  }
}
