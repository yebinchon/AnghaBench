
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int i_pitch; size_t i_lines; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_17__ {scalar_t__ i_planes; TYPE_2__* p; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_18__ {int* bytes; int DeleteBuffers; int buffers; } ;
typedef TYPE_4__ picture_sys_t ;
struct TYPE_19__ {int pf_destroy; TYPE_4__* p_sys; } ;
typedef TYPE_5__ picture_resource_t ;
struct TYPE_20__ {unsigned int tex_count; int fmt; TYPE_1__* vt; } ;
typedef TYPE_6__ opengl_tex_converter_t ;
struct TYPE_15__ {int DeleteBuffers; int (* GenBuffers ) (scalar_t__,int ) ;} ;


 size_t SIZE_MAX ;
 int assert (int) ;
 TYPE_4__* calloc (int,int) ;
 int free (TYPE_4__*) ;
 int pbo_picture_destroy ;
 TYPE_3__* picture_NewFromResource (int *,TYPE_5__*) ;
 int picture_Release (TYPE_3__*) ;
 scalar_t__ picture_Setup (TYPE_3__*,int *) ;
 int stub1 (scalar_t__,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static picture_t *
pbo_picture_create(const opengl_tex_converter_t *tc)
{
    picture_sys_t *picsys = calloc(1, sizeof(*picsys));
    if (unlikely(picsys == ((void*)0)))
        return ((void*)0);

    picture_resource_t rsc = {
        .p_sys = picsys,
        .pf_destroy = pbo_picture_destroy,
    };
    picture_t *pic = picture_NewFromResource(&tc->fmt, &rsc);
    if (pic == ((void*)0))
    {
        free(picsys);
        return ((void*)0);
    }

    tc->vt->GenBuffers(pic->i_planes, picsys->buffers);
    picsys->DeleteBuffers = tc->vt->DeleteBuffers;


    if (picture_Setup(pic, &tc->fmt))
    {
        picture_Release(pic);
        return ((void*)0);
    }

    assert(pic->i_planes > 0
        && (unsigned) pic->i_planes == tc->tex_count);

    for (int i = 0; i < pic->i_planes; ++i)
    {
        const plane_t *p = &pic->p[i];

        if( p->i_pitch < 0 || p->i_lines <= 0 ||
            (size_t)p->i_pitch > SIZE_MAX/p->i_lines )
        {
            picture_Release(pic);
            return ((void*)0);
        }
        picsys->bytes[i] = p->i_pitch * p->i_lines;
    }
    return pic;
}
