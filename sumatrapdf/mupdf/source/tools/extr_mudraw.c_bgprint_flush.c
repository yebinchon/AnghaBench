
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ started; int stop; int active; } ;


 TYPE_1__ bgprint ;
 int mu_wait_semaphore (int *) ;

__attribute__((used)) static void bgprint_flush(void)
{
 if (!bgprint.active || !bgprint.started)
  return;


 mu_wait_semaphore(&bgprint.stop);

 bgprint.started = 0;
}
