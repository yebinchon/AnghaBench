
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpip_callback_msg {int dummy; } ;


 int MEMP_TCPIP_MSG_API ;
 int memp_free (int ,struct tcpip_callback_msg*) ;

void tcpip_callbackmsg_delete(struct tcpip_callback_msg* msg)
{
  memp_free(MEMP_TCPIP_MSG_API, msg);
}
