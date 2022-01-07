
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int kcf_pool_t ;
struct TYPE_3__ {int kp_user_cv; int kp_user_lock; int kp_nothr_cv; int kp_thread_lock; void* kp_user_waiting; scalar_t__ kp_nthrs; void* kp_signal_create_thread; scalar_t__ kp_blockedthreads; scalar_t__ kp_idlethreads; scalar_t__ kp_threads; } ;


 void* B_FALSE ;
 int CV_DEFAULT ;
 int KCF_DEFAULT_THRTIMEOUT ;
 int KM_SLEEP ;
 int MUTEX_DEFAULT ;
 int cv_init (int *,int *,int ,int *) ;
 int kcf_idlethr_timeout ;
 TYPE_1__* kcfpool ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int mutex_init (int *,int *,int ,int *) ;

__attribute__((used)) static void
kcfpool_alloc()
{
 kcfpool = kmem_alloc(sizeof (kcf_pool_t), KM_SLEEP);

 kcfpool->kp_threads = kcfpool->kp_idlethreads = 0;
 kcfpool->kp_blockedthreads = 0;
 kcfpool->kp_signal_create_thread = B_FALSE;
 kcfpool->kp_nthrs = 0;
 kcfpool->kp_user_waiting = B_FALSE;

 mutex_init(&kcfpool->kp_thread_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 cv_init(&kcfpool->kp_nothr_cv, ((void*)0), CV_DEFAULT, ((void*)0));

 mutex_init(&kcfpool->kp_user_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
 cv_init(&kcfpool->kp_user_cv, ((void*)0), CV_DEFAULT, ((void*)0));

 kcf_idlethr_timeout = KCF_DEFAULT_THRTIMEOUT;
}
