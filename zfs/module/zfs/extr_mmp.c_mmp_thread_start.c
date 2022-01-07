
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int mmp_thread_lock; scalar_t__ mmp_thread; } ;
struct TYPE_7__ {TYPE_2__ spa_mmp; } ;
typedef TYPE_1__ spa_t ;
typedef TYPE_2__ mmp_thread_t ;


 int TS_RUN ;
 int defclsyspri ;
 int gethrtime () ;
 int mmp_thread ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int p0 ;
 int spa_name (TYPE_1__*) ;
 scalar_t__ spa_writeable (TYPE_1__*) ;
 scalar_t__ thread_create (int *,int ,int ,TYPE_1__*,int ,int *,int ,int ) ;
 int zfs_dbgmsg (char*,int ,int ) ;

void
mmp_thread_start(spa_t *spa)
{
 mmp_thread_t *mmp = &spa->spa_mmp;

 if (spa_writeable(spa)) {
  mutex_enter(&mmp->mmp_thread_lock);
  if (!mmp->mmp_thread) {
   mmp->mmp_thread = thread_create(((void*)0), 0, mmp_thread,
       spa, 0, &p0, TS_RUN, defclsyspri);
   zfs_dbgmsg("MMP thread started pool '%s' "
       "gethrtime %llu", spa_name(spa), gethrtime());
  }
  mutex_exit(&mmp->mmp_thread_lock);
 }
}
