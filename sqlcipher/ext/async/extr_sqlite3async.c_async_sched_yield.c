
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sched_yield () ;

__attribute__((used)) static void async_sched_yield(void){
  sched_yield();
}
