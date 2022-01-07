
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callout {int flags; int wait; } ;


 int CALLOUT_ACTIVE ;
 int CALLOUT_COMPLETED ;
 int CALLOUT_PENDING ;
 int CALLOUT_WAITING ;
 int abort () ;
 scalar_t__ callout_active (struct callout*) ;
 int callout_cnd ;
 int callout_completed (struct callout*) ;
 int callout_mtx ;
 scalar_t__ callout_pending (struct callout*) ;
 int callout_remove (struct callout*) ;
 scalar_t__ callout_thread ;
 int pthread_cond_signal (int *) ;
 int pthread_cond_wait (int *,int *) ;
 scalar_t__ pthread_self () ;
 int work ;

__attribute__((used)) static int callout_stop_safe_locked(struct callout *c, int drain) {
  int result = 0;

  if ((drain) && (pthread_self() != callout_thread) && (callout_pending(c) ||
    (callout_active(c) && !callout_completed(c))))
  {
    if (c->flags & CALLOUT_WAITING) {
      abort();
    }


    c->flags |= CALLOUT_WAITING;
    work = 1;

    pthread_cond_signal(&callout_cnd);

    while (!(c->flags & CALLOUT_COMPLETED)) {
      pthread_cond_wait(&c->wait, &callout_mtx);
    }

    c->flags &= ~CALLOUT_WAITING;
    result = 1;
  }

  callout_remove(c);


  c->flags &= ~(CALLOUT_ACTIVE | CALLOUT_PENDING | CALLOUT_COMPLETED |
    CALLOUT_WAITING);

  return (result);
}
