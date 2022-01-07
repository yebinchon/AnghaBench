
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int i_planes; TYPE_7__* context; int format; TYPE_2__* p; int p_sys; } ;
typedef TYPE_4__ picture_t ;
struct TYPE_18__ {TYPE_1__* p; int pf_destroy; int p_sys; } ;
typedef TYPE_5__ picture_resource_t ;
struct TYPE_16__ {TYPE_4__* opaque; } ;
struct TYPE_19__ {TYPE_3__ gc; } ;
typedef TYPE_6__ picture_priv_t ;
struct TYPE_20__ {TYPE_7__* (* copy ) (TYPE_7__*) ;} ;
struct TYPE_15__ {int i_pitch; int i_lines; int p_pixels; } ;
struct TYPE_14__ {int i_pitch; int i_lines; int p_pixels; } ;


 scalar_t__ likely (int ) ;
 int picture_DestroyClone ;
 int picture_Hold (TYPE_4__*) ;
 TYPE_4__* picture_NewFromResource (int *,TYPE_5__*) ;
 TYPE_7__* stub1 (TYPE_7__*) ;

picture_t *picture_Clone(picture_t *picture)
{

    picture_resource_t res = {
        .p_sys = picture->p_sys,
        .pf_destroy = picture_DestroyClone,
    };

    for (int i = 0; i < picture->i_planes; i++) {
        res.p[i].p_pixels = picture->p[i].p_pixels;
        res.p[i].i_lines = picture->p[i].i_lines;
        res.p[i].i_pitch = picture->p[i].i_pitch;
    }

    picture_t *clone = picture_NewFromResource(&picture->format, &res);
    if (likely(clone != ((void*)0))) {
        ((picture_priv_t *)clone)->gc.opaque = picture;
        picture_Hold(picture);

        if (picture->context != ((void*)0))
            clone->context = picture->context->copy(picture->context);
    }
    return clone;
}
