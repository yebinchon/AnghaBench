
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* sys; int fmt; } ;
typedef TYPE_2__ vout_display_t ;
typedef int picture_pool_t ;
struct TYPE_5__ {int * pool; int d3d_dev; } ;


 int * Direct3D9CreatePicturePool (int ,int *,int *,unsigned int) ;
 int VLC_OBJECT (TYPE_2__*) ;

__attribute__((used)) static picture_pool_t *DisplayPool(vout_display_t *vd, unsigned count)
{
    if ( vd->sys->pool == ((void*)0) )
    {
        vd->sys->pool = Direct3D9CreatePicturePool(VLC_OBJECT(vd), &vd->sys->d3d_dev,
                                                   &vd->fmt, count);
    }
    return vd->sys->pool;
}
