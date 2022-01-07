
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; int unfair; } ;
struct aout_sys_common {TYPE_1__ lock; } ;


 int OS_UNFAIR_LOCK_INIT ;
 scalar_t__ likely (int ) ;
 int os_unfair_lock_lock ;
 int vlc_mutex_init (int *) ;

__attribute__((used)) static inline void
lock_init(struct aout_sys_common *p_sys)
{
    if (likely(os_unfair_lock_lock))
        p_sys->lock.unfair = OS_UNFAIR_LOCK_INIT;
    else
        vlc_mutex_init(&p_sys->lock.mutex);
}
