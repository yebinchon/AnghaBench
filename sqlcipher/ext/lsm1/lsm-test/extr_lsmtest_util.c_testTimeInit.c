
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gettimeofday (int *,int ) ;
 int zero_time ;

void testTimeInit(void){
  gettimeofday(&zero_time, 0);
}
