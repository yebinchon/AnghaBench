
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fletcher_4_fini () ;
 int icp_fini () ;
 int random_fini () ;
 int spa_fini () ;
 int system_taskq_fini () ;

void
kernel_fini(void)
{
 fletcher_4_fini();
 spa_fini();

 icp_fini();
 system_taskq_fini();

 random_fini();
}
