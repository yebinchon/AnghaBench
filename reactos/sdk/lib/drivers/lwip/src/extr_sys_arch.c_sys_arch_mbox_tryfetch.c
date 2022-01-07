
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32_t ;
typedef int sys_mbox_t ;


 scalar_t__ SYS_ARCH_TIMEOUT ;
 int SYS_MBOX_EMPTY ;
 scalar_t__ sys_arch_mbox_fetch (int *,void**,int) ;

u32_t
sys_arch_mbox_tryfetch(sys_mbox_t *mbox, void **msg)
{
    if (sys_arch_mbox_fetch(mbox, msg, 1) != SYS_ARCH_TIMEOUT)
        return 0;
    else
        return SYS_MBOX_EMPTY;
}
