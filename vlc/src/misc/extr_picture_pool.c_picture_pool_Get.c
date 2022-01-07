
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * p_next; } ;
typedef TYPE_1__ picture_t ;
struct TYPE_9__ {scalar_t__ refs; unsigned long long available; scalar_t__ (* pic_lock ) (TYPE_1__*) ;int lock; TYPE_1__** picture; int canceled; } ;
typedef TYPE_2__ picture_pool_t ;


 scalar_t__ VLC_SUCCESS ;
 int assert (int) ;
 int atomic_fetch_add_explicit (scalar_t__*,int,int ) ;
 int ctz (unsigned long long) ;
 int memory_order_relaxed ;
 TYPE_1__* picture_pool_ClonePicture (TYPE_2__*,int) ;
 scalar_t__ stub1 (TYPE_1__*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

picture_t *picture_pool_Get(picture_pool_t *pool)
{
    unsigned long long available;

    vlc_mutex_lock(&pool->lock);
    assert(pool->refs > 0);
    available = pool->available;

    while (available != 0)
    {
        int i = ctz(available);

        if (unlikely(pool->canceled))
            break;

        pool->available &= ~(1ULL << i);
        vlc_mutex_unlock(&pool->lock);
        available &= ~(1ULL << i);

        picture_t *picture = pool->picture[i];

        if (pool->pic_lock != ((void*)0) && pool->pic_lock(picture) != VLC_SUCCESS) {
            vlc_mutex_lock(&pool->lock);
            pool->available |= 1ULL << i;
            continue;
        }

        picture_t *clone = picture_pool_ClonePicture(pool, i);
        if (clone != ((void*)0)) {
            assert(clone->p_next == ((void*)0));
            atomic_fetch_add_explicit(&pool->refs, 1, memory_order_relaxed);
        }
        return clone;
    }

    vlc_mutex_unlock(&pool->lock);
    return ((void*)0);
}
