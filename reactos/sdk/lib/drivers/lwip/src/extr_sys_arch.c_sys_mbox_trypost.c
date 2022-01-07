
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sys_mbox_t ;
typedef int err_t ;


 int ERR_OK ;
 int sys_mbox_post (int *,void*) ;

err_t
sys_mbox_trypost(sys_mbox_t *mbox, void *msg)
{
    sys_mbox_post(mbox, msg);

    return ERR_OK;
}
