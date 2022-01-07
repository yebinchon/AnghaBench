
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_5__ {int opaque; } ;
struct TYPE_6__ {TYPE_1__ gc; } ;
typedef TYPE_2__ picture_priv_t ;
struct TYPE_7__ {unsigned long long available; int lock; int wait; int (* pic_unlock ) (int *) ;int ** picture; } ;
typedef TYPE_3__ picture_pool_t ;


 int POOL_MAX ;
 int assert (int) ;
 int picture_Release (int *) ;
 int picture_pool_Destroy (TYPE_3__*) ;
 int stub1 (int *) ;
 int vlc_cond_signal (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void picture_pool_ReleasePicture(picture_t *clone)
{
    picture_priv_t *priv = (picture_priv_t *)clone;
    uintptr_t sys = (uintptr_t)priv->gc.opaque;
    picture_pool_t *pool = (void *)(sys & ~(POOL_MAX - 1));
    unsigned offset = sys & (POOL_MAX - 1);
    picture_t *picture = pool->picture[offset];

    if (pool->pic_unlock != ((void*)0))
        pool->pic_unlock(picture);
    picture_Release(picture);

    vlc_mutex_lock(&pool->lock);
    assert(!(pool->available & (1ULL << offset)));
    pool->available |= 1ULL << offset;
    vlc_cond_signal(&pool->wait);
    vlc_mutex_unlock(&pool->lock);

    picture_pool_Destroy(pool);
}
