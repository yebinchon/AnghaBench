
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mmp_kstat_id; int mmp_delay; int mmp_last_write; int mmp_io_lock; int mmp_thread_cv; int mmp_thread_lock; } ;
struct TYPE_4__ {TYPE_2__ spa_mmp; } ;
typedef TYPE_1__ spa_t ;
typedef TYPE_2__ mmp_thread_t ;


 int CV_DEFAULT ;
 int MMP_INTERVAL_OK (int ) ;
 int MSEC2NSEC (int ) ;
 int MUTEX_DEFAULT ;
 int cv_init (int *,int *,int ,int *) ;
 int gethrtime () ;
 int mutex_init (int *,int *,int ,int *) ;
 int zfs_multihost_interval ;

void
mmp_init(spa_t *spa)
{
 mmp_thread_t *mmp = &spa->spa_mmp;

 mutex_init(&mmp->mmp_thread_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 cv_init(&mmp->mmp_thread_cv, ((void*)0), CV_DEFAULT, ((void*)0));
 mutex_init(&mmp->mmp_io_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 mmp->mmp_kstat_id = 1;






 mmp->mmp_last_write = gethrtime();
 mmp->mmp_delay = MSEC2NSEC(MMP_INTERVAL_OK(zfs_multihost_interval));
}
