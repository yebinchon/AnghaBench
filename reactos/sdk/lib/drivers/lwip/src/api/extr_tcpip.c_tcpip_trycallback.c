
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpip_callback_msg {int dummy; } ;
typedef int err_t ;


 int ERR_VAL ;
 int mbox ;
 int sys_mbox_trypost (int *,struct tcpip_callback_msg*) ;
 int sys_mbox_valid (int *) ;

err_t
tcpip_trycallback(struct tcpip_callback_msg* msg)
{
  if (!sys_mbox_valid(&mbox)) {
    return ERR_VAL;
  }
  return sys_mbox_trypost(&mbox, msg);
}
