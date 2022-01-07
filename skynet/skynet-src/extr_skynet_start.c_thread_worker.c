
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_parm {int id; int weight; struct monitor* m; } ;
struct skynet_monitor {int dummy; } ;
struct monitor {int mutex; int sleep; int cond; int quit; struct skynet_monitor** m; } ;
struct message_queue {int dummy; } ;


 int THREAD_WORKER ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int pthread_cond_wait (int *,int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 struct message_queue* skynet_context_message_dispatch (struct skynet_monitor*,struct message_queue*,int) ;
 int skynet_initthread (int ) ;
 int stderr ;

__attribute__((used)) static void *
thread_worker(void *p) {
 struct worker_parm *wp = p;
 int id = wp->id;
 int weight = wp->weight;
 struct monitor *m = wp->m;
 struct skynet_monitor *sm = m->m[id];
 skynet_initthread(THREAD_WORKER);
 struct message_queue * q = ((void*)0);
 while (!m->quit) {
  q = skynet_context_message_dispatch(sm, q, weight);
  if (q == ((void*)0)) {
   if (pthread_mutex_lock(&m->mutex) == 0) {
    ++ m->sleep;


    if (!m->quit)
     pthread_cond_wait(&m->cond, &m->mutex);
    -- m->sleep;
    if (pthread_mutex_unlock(&m->mutex)) {
     fprintf(stderr, "unlock mutex error");
     exit(1);
    }
   }
  }
 }
 return ((void*)0);
}
