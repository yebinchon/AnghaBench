
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; scalar_t__ started; int stop; int active; } ;


 TYPE_1__ bgprint ;
 int mu_wait_semaphore (int *) ;

__attribute__((used)) static int wait_for_bgprint_to_finish(void)
{
 if (!bgprint.active || !bgprint.started)
  return 0;

 mu_wait_semaphore(&bgprint.stop);
 bgprint.started = 0;
 return bgprint.status;
}
