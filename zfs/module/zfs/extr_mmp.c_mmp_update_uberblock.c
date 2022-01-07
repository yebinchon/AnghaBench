
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ub_timestamp; } ;
typedef TYPE_1__ uberblock_t ;
struct TYPE_9__ {int mmp_seq; int mmp_io_lock; TYPE_1__ mmp_ub; } ;
struct TYPE_8__ {TYPE_3__ spa_mmp; } ;
typedef TYPE_2__ spa_t ;
typedef TYPE_3__ mmp_thread_t ;


 int B_TRUE ;
 int gethrestime_sec () ;
 int mmp_delay_update (TYPE_2__*,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
mmp_update_uberblock(spa_t *spa, uberblock_t *ub)
{
 mmp_thread_t *mmp = &spa->spa_mmp;

 mutex_enter(&mmp->mmp_io_lock);
 mmp->mmp_ub = *ub;
 mmp->mmp_seq = 1;
 mmp->mmp_ub.ub_timestamp = gethrestime_sec();
 mmp_delay_update(spa, B_TRUE);
 mutex_exit(&mmp->mmp_io_lock);
}
