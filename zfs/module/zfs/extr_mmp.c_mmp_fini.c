
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mmp_io_lock; int mmp_thread_cv; int mmp_thread_lock; } ;
struct TYPE_4__ {TYPE_2__ spa_mmp; } ;
typedef TYPE_1__ spa_t ;
typedef TYPE_2__ mmp_thread_t ;


 int cv_destroy (int *) ;
 int mutex_destroy (int *) ;

void
mmp_fini(spa_t *spa)
{
 mmp_thread_t *mmp = &spa->spa_mmp;

 mutex_destroy(&mmp->mmp_thread_lock);
 cv_destroy(&mmp->mmp_thread_cv);
 mutex_destroy(&mmp->mmp_io_lock);
}
