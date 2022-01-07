
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callout {int dummy; } ;


 int callout_mtx ;
 int callout_stop_safe_locked (struct callout*,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int callout_stop_safe(struct callout *c, int drain) {
  pthread_mutex_lock(&callout_mtx);
  callout_stop_safe_locked(c, drain);
  pthread_mutex_unlock(&callout_mtx);
  return 0;
}
