
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sys_prot_t ;


 int KeLowerIrql (int ) ;

void
sys_arch_unprotect(sys_prot_t lev)
{
    KeLowerIrql(lev);
}
