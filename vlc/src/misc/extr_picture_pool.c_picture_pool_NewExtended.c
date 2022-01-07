
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_6__ {unsigned long long available; unsigned long long picture_count; int canceled; int picture; int refs; int wait; int lock; int pic_unlock; int pic_lock; } ;
typedef TYPE_1__ picture_pool_t ;
struct TYPE_7__ {int picture_count; int picture; int unlock; int lock; } ;
typedef TYPE_2__ picture_pool_configuration_t ;


 int POOL_MAX ;
 TYPE_1__* aligned_alloc (int,size_t) ;
 int atomic_init (int *,int) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ unlikely (int) ;
 int vlc_cond_init (int *) ;
 int vlc_mutex_init (int *) ;

picture_pool_t *picture_pool_NewExtended(const picture_pool_configuration_t *cfg)
{
    if (unlikely(cfg->picture_count > POOL_MAX))
        return ((void*)0);

    picture_pool_t *pool;
    size_t size = sizeof (*pool) + cfg->picture_count * sizeof (picture_t *);

    size += (-size) & (POOL_MAX - 1);
    pool = aligned_alloc(POOL_MAX, size);
    if (unlikely(pool == ((void*)0)))
        return ((void*)0);

    pool->pic_lock = cfg->lock;
    pool->pic_unlock = cfg->unlock;
    vlc_mutex_init(&pool->lock);
    vlc_cond_init(&pool->wait);
    if (cfg->picture_count == POOL_MAX)
        pool->available = ~0ULL;
    else
        pool->available = (1ULL << cfg->picture_count) - 1;
    atomic_init(&pool->refs, 1);
    pool->picture_count = cfg->picture_count;
    memcpy(pool->picture, cfg->picture,
           cfg->picture_count * sizeof (picture_t *));
    pool->canceled = 0;
    return pool;
}
