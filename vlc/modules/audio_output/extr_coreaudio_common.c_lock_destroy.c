
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct aout_sys_common {TYPE_1__ lock; } ;


 int os_unfair_lock_lock ;
 scalar_t__ unlikely (int) ;
 int vlc_mutex_destroy (int *) ;

__attribute__((used)) static inline void
lock_destroy(struct aout_sys_common *p_sys)
{
    if (unlikely(!os_unfair_lock_lock))
        vlc_mutex_destroy(&p_sys->lock.mutex);
}
