
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complete_and_exit (int *,int ) ;
 int tsd_exit () ;

void
__thread_exit(void)
{
 tsd_exit();
 complete_and_exit(((void*)0), 0);

}
