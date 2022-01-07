
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmp_thread_lock; } ;
typedef TYPE_1__ mmp_thread_t ;
typedef int callb_cpr_t ;


 int CALLB_CPR_INIT (int *,int *,int ,int ) ;
 int FTAG ;
 int callb_generic_cpr ;
 int mutex_enter (int *) ;

__attribute__((used)) static void
mmp_thread_enter(mmp_thread_t *mmp, callb_cpr_t *cpr)
{
 CALLB_CPR_INIT(cpr, &mmp->mmp_thread_lock, callb_generic_cpr, FTAG);
 mutex_enter(&mmp->mmp_thread_lock);
}
