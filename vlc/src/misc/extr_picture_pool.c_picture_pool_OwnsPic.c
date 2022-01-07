
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_5__ {scalar_t__ destroy; int * opaque; } ;
struct TYPE_6__ {TYPE_1__ gc; } ;
typedef TYPE_2__ picture_priv_t ;
struct TYPE_7__ {int ** picture; } ;
typedef TYPE_3__ picture_pool_t ;


 int POOL_MAX ;
 scalar_t__ picture_pool_ReleasePicture ;

bool picture_pool_OwnsPic(picture_pool_t *pool, picture_t *pic)
{
    picture_priv_t *priv = (picture_priv_t *)pic;

    while (priv->gc.destroy != picture_pool_ReleasePicture) {
        if (priv->gc.opaque == ((void*)0))
            return 0;

        pic = priv->gc.opaque;
        priv = (picture_priv_t *)pic;
    }

    do {
        uintptr_t sys = (uintptr_t)priv->gc.opaque;
        picture_pool_t *picpool = (void *)(sys & ~(POOL_MAX - 1));

        if (pool == picpool)
            return 1;

        pic = picpool->picture[sys & (POOL_MAX - 1 )];
        priv = (picture_priv_t *)pic;
    } while (priv->gc.destroy == picture_pool_ReleasePicture);

    return 0;
}
