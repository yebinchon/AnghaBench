
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pl_plane_data {scalar_t__ height; uintptr_t buf_offset; scalar_t__ pixels; struct pl_buf const* buf; int row_stride; } ;
struct TYPE_5__ {scalar_t__ size; } ;
struct pl_buf {int data; TYPE_1__ params; } ;
typedef uintptr_t ptrdiff_t ;
struct TYPE_7__ {int i_planes; TYPE_2__* p; int format; } ;
typedef TYPE_3__ picture_t ;
struct TYPE_6__ {scalar_t__ i_visible_lines; scalar_t__ p_pixels; int i_pitch; } ;


 int assert (int) ;
 int vlc_placebo_PlaneFormat (int *,struct pl_plane_data*) ;

int vlc_placebo_PlaneData(const picture_t *pic, struct pl_plane_data data[4],
                          const struct pl_buf *buf)
{
    int planes = vlc_placebo_PlaneFormat(&pic->format, data);
    if (!planes)
        return 0;

    assert(planes == pic->i_planes);
    for (int i = 0; i < planes; i++) {
        assert(data[i].height == pic->p[i].i_visible_lines);
        data[i].row_stride = pic->p[i].i_pitch;
        if (buf) {
            assert(buf->data);
            assert(pic->p[i].p_pixels <= buf->data + buf->params.size);
            data[i].buf = buf;
            data[i].buf_offset = (uintptr_t) pic->p[i].p_pixels - (ptrdiff_t) buf->data;
        } else {
            data[i].pixels = pic->p[i].p_pixels;
        }
    }

    return planes;
}
