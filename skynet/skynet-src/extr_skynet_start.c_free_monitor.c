
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct monitor {int count; struct monitor* m; int cond; int mutex; } ;


 int pthread_cond_destroy (int *) ;
 int pthread_mutex_destroy (int *) ;
 int skynet_free (struct monitor*) ;
 int skynet_monitor_delete (struct monitor) ;

__attribute__((used)) static void
free_monitor(struct monitor *m) {
 int i;
 int n = m->count;
 for (i=0;i<n;i++) {
  skynet_monitor_delete(m->m[i]);
 }
 pthread_mutex_destroy(&m->mutex);
 pthread_cond_destroy(&m->cond);
 skynet_free(m->m);
 skynet_free(m);
}
