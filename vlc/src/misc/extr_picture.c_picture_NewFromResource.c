
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int video_format_t ;
struct TYPE_13__ {int i_planes; TYPE_2__* p; int p_sys; } ;
typedef TYPE_4__ picture_t ;
struct TYPE_14__ {TYPE_3__* p; int * pf_destroy; int p_sys; } ;
typedef TYPE_5__ picture_resource_t ;
struct TYPE_10__ {int * destroy; } ;
struct TYPE_15__ {TYPE_1__ gc; TYPE_4__ picture; } ;
typedef TYPE_6__ picture_priv_t ;
struct TYPE_12__ {int i_pitch; int i_lines; int p_pixels; } ;
struct TYPE_11__ {int i_pitch; int i_lines; int p_pixels; } ;


 int assert (int ) ;
 int * picture_DestroyDummy ;
 TYPE_6__* picture_NewPrivate (int const*,int ) ;
 scalar_t__ unlikely (int ) ;

picture_t *picture_NewFromResource( const video_format_t *p_fmt, const picture_resource_t *p_resource )
{
    assert(p_resource != ((void*)0));

    picture_priv_t *priv = picture_NewPrivate(p_fmt, 0);
    if (unlikely(priv == ((void*)0)))
        return ((void*)0);

    picture_t *p_picture = &priv->picture;

    p_picture->p_sys = p_resource->p_sys;

    if( p_resource->pf_destroy != ((void*)0) )
        priv->gc.destroy = p_resource->pf_destroy;
    else
        priv->gc.destroy = picture_DestroyDummy;

    for( int i = 0; i < p_picture->i_planes; i++ )
    {
        p_picture->p[i].p_pixels = p_resource->p[i].p_pixels;
        p_picture->p[i].i_lines = p_resource->p[i].i_lines;
        p_picture->p[i].i_pitch = p_resource->p[i].i_pitch;
    }

    return p_picture;
}
