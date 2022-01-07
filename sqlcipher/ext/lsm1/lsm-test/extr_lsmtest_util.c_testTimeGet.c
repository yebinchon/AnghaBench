
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_2__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 int gettimeofday (struct timeval*,int ) ;
 TYPE_1__ zero_time ;

int testTimeGet(void){
  struct timeval now;
  gettimeofday(&now, 0);
  return
    (((int)now.tv_sec - (int)zero_time.tv_sec)*1000) +
    (((int)now.tv_usec - (int)zero_time.tv_usec)/1000);
}
