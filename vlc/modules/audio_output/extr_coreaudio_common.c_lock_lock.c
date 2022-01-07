
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; int unfair; } ;
struct aout_sys_common {TYPE_1__ lock; } ;


 scalar_t__ likely (int (*) (int *)) ;
 int os_unfair_lock_lock (int *) ;
 int vlc_mutex_lock (int *) ;

__attribute__((used)) static inline void
lock_lock(struct aout_sys_common *p_sys)
{
    if (likely(os_unfair_lock_lock))
        os_unfair_lock_lock(&p_sys->lock.unfair);
    else
        vlc_mutex_lock(&p_sys->lock.mutex);
}
