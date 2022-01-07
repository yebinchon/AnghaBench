
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ current_point; int current; } ;


 TYPE_1__* TI ;
 scalar_t__ gettime () ;
 int skynet_error (int *,char*,scalar_t__,scalar_t__) ;
 int timer_update (TYPE_1__*) ;

void
skynet_updatetime(void) {
 uint64_t cp = gettime();
 if(cp < TI->current_point) {
  skynet_error(((void*)0), "time diff error: change from %lld to %lld", cp, TI->current_point);
  TI->current_point = cp;
 } else if (cp != TI->current_point) {
  uint32_t diff = (uint32_t)(cp - TI->current_point);
  TI->current_point = cp;
  TI->current += diff;
  int i;
  for (i=0;i<diff;i++) {
   timer_update(TI);
  }
 }
}
