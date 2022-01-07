
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmp_thread_cv; } ;
typedef TYPE_1__ mmp_thread_t ;
typedef int kthread_t ;
typedef int callb_cpr_t ;


 int ASSERT (int ) ;
 int CALLB_CPR_EXIT (int *) ;
 int cv_broadcast (int *) ;
 int thread_exit () ;

__attribute__((used)) static void
mmp_thread_exit(mmp_thread_t *mmp, kthread_t **mpp, callb_cpr_t *cpr)
{
 ASSERT(*mpp != ((void*)0));
 *mpp = ((void*)0);
 cv_broadcast(&mmp->mmp_thread_cv);
 CALLB_CPR_EXIT(cpr);
 thread_exit();
}
