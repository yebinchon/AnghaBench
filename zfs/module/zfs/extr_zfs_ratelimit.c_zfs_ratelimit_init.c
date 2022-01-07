
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int interval; unsigned int* burst; int lock; scalar_t__ start; scalar_t__ count; } ;
typedef TYPE_1__ zfs_ratelimit_t ;


 int MUTEX_DEFAULT ;
 int mutex_init (int *,int *,int ,int *) ;

void
zfs_ratelimit_init(zfs_ratelimit_t *rl, unsigned int *burst,
    unsigned int interval)
{
 rl->count = 0;
 rl->start = 0;
 rl->interval = interval;
 rl->burst = burst;
 mutex_init(&rl->lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));
}
