
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ opnum; scalar_t__ completed; } ;
typedef TYPE_1__ Thread ;


 int sched_yield () ;

__attribute__((used)) static void test_thread_wait(Thread *p){
  while( p->opnum>p->completed ) sched_yield();
}
