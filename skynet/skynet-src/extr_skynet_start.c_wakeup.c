
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct monitor {int sleep; int count; int cond; } ;


 int pthread_cond_signal (int *) ;

__attribute__((used)) static void
wakeup(struct monitor *m, int busy) {
 if (m->sleep >= m->count - busy) {

  pthread_cond_signal(&m->cond);
 }
}
