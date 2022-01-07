
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ zfs_ratelimit_t ;


 int mutex_destroy (int *) ;

void
zfs_ratelimit_fini(zfs_ratelimit_t *rl)
{
 mutex_destroy(&rl->lock);
}
