
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mmp_thread_exiting; int * mmp_thread; int mmp_thread_lock; int mmp_thread_cv; } ;
struct TYPE_5__ {TYPE_2__ spa_mmp; } ;
typedef TYPE_1__ spa_t ;
typedef TYPE_2__ mmp_thread_t ;


 int ASSERT (int ) ;
 int cv_broadcast (int *) ;
 int cv_wait (int *,int *) ;
 int gethrtime () ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_name (TYPE_1__*) ;
 int zfs_dbgmsg (char*,int ,int ) ;

void
mmp_thread_stop(spa_t *spa)
{
 mmp_thread_t *mmp = &spa->spa_mmp;

 mutex_enter(&mmp->mmp_thread_lock);
 mmp->mmp_thread_exiting = 1;
 cv_broadcast(&mmp->mmp_thread_cv);

 while (mmp->mmp_thread) {
  cv_wait(&mmp->mmp_thread_cv, &mmp->mmp_thread_lock);
 }
 mutex_exit(&mmp->mmp_thread_lock);
 zfs_dbgmsg("MMP thread stopped pool '%s' gethrtime %llu",
     spa_name(spa), gethrtime());

 ASSERT(mmp->mmp_thread == ((void*)0));
 mmp->mmp_thread_exiting = 0;
}
