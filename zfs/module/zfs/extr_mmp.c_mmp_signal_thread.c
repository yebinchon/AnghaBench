
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mmp_thread_lock; int mmp_thread_cv; scalar_t__ mmp_thread; } ;
struct TYPE_4__ {TYPE_2__ spa_mmp; } ;
typedef TYPE_1__ spa_t ;
typedef TYPE_2__ mmp_thread_t ;


 int cv_broadcast (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
mmp_signal_thread(spa_t *spa)
{
 mmp_thread_t *mmp = &spa->spa_mmp;

 mutex_enter(&mmp->mmp_thread_lock);
 if (mmp->mmp_thread)
  cv_broadcast(&mmp->mmp_thread_cv);
 mutex_exit(&mmp->mmp_thread_lock);
}
