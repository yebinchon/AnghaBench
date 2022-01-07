
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int video_format_t ;
struct TYPE_10__ {unsigned char* p_pixels; int i_lines; int i_pitch; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_11__ {scalar_t__ i_planes; TYPE_2__* p; TYPE_5__* p_sys; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_9__ {int destroy; } ;
struct TYPE_12__ {scalar_t__ extra; TYPE_3__ picture; TYPE_1__ gc; } ;
typedef TYPE_4__ picture_priv_t ;
struct TYPE_13__ {unsigned char* base; size_t size; scalar_t__ offset; int fd; } ;
typedef TYPE_5__ picture_buffer_t ;


 int PICTURE_PLANE_MAX ;
 size_t PICTURE_SW_SIZE_MAX ;
 int add_overflow (size_t,size_t,size_t*) ;
 int free (TYPE_3__*) ;
 int mul_overflow (int ,int ,size_t*) ;
 unsigned char* picture_Allocate (int *,size_t) ;
 int picture_DestroyFromFormat ;
 TYPE_4__* picture_NewPrivate (int const*,int) ;
 scalar_t__ unlikely (int) ;

picture_t *picture_NewFromFormat(const video_format_t *restrict fmt)
{
    picture_priv_t *priv = picture_NewPrivate(fmt, sizeof (picture_buffer_t));
    if (unlikely(priv == ((void*)0)))
        return ((void*)0);

    priv->gc.destroy = picture_DestroyFromFormat;

    picture_t *pic = &priv->picture;
    if (pic->i_planes == 0) {
        pic->p_sys = ((void*)0);
        return pic;
    }


    size_t plane_sizes[PICTURE_PLANE_MAX];
    size_t pic_size = 0;

    for (int i = 0; i < pic->i_planes; i++)
    {
        const plane_t *p = &pic->p[i];

        if (unlikely(mul_overflow(p->i_pitch, p->i_lines, &plane_sizes[i]))
         || unlikely(add_overflow(pic_size, plane_sizes[i], &pic_size)))
            goto error;
    }

    if (unlikely(pic_size >= PICTURE_SW_SIZE_MAX))
        goto error;

    picture_buffer_t *res = (void *)priv->extra;

    unsigned char *buf = picture_Allocate(&res->fd, pic_size);
    if (unlikely(buf == ((void*)0)))
        goto error;

    res->base = buf;
    res->size = pic_size;
    res->offset = 0;
    pic->p_sys = res;


    for (int i = 0; i < pic->i_planes; i++)
    {
        pic->p[i].p_pixels = buf;
        buf += plane_sizes[i];
    }

    return pic;
error:
    free(pic);
    return ((void*)0);
}
