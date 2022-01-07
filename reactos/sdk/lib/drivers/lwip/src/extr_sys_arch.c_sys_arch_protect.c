
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sys_prot_t ;


 int DISPATCH_LEVEL ;
 int KeRaiseIrql (int ,int *) ;

void
sys_arch_protect(sys_prot_t *lev)
{

    KeRaiseIrql(DISPATCH_LEVEL, lev);
}
