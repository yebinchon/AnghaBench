
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ structure; int context; } ;
typedef TYPE_3__ vlc_vdp_video_field_t ;
typedef int vlc_tick_t ;
struct TYPE_21__ {int date; int b_top_field_first; int i_nb_fields; int b_progressive; struct TYPE_21__* p_next; int * context; int format; } ;
typedef TYPE_4__ picture_t ;
struct TYPE_18__ {scalar_t__ i_frame_rate; int i_frame_rate_base; } ;
struct TYPE_19__ {TYPE_1__ video; } ;
struct TYPE_22__ {TYPE_2__ fmt_in; TYPE_6__* p_sys; } ;
typedef TYPE_5__ filter_t ;
struct TYPE_23__ {int last_pts; } ;
typedef TYPE_6__ filter_sys_t ;


 void* VDP_VIDEO_MIXER_PICTURE_STRUCTURE_BOTTOM_FIELD ;
 scalar_t__ VDP_VIDEO_MIXER_PICTURE_STRUCTURE_FRAME ;
 void* VDP_VIDEO_MIXER_PICTURE_STRUCTURE_TOP_FIELD ;
 int VLC_TICK_INVALID ;
 int assert (int ) ;
 TYPE_4__* filter_NewPicture (TYPE_5__*) ;
 int picture_CopyProperties (TYPE_4__*,TYPE_4__*) ;
 TYPE_4__* picture_NewFromFormat (int *) ;
 int picture_Release (TYPE_4__*) ;
 scalar_t__ unlikely (int ) ;
 int vlc_tick_from_samples (int ,scalar_t__) ;
 TYPE_3__* vlc_vdp_video_copy (TYPE_3__*) ;

__attribute__((used)) static picture_t *Deinterlace(filter_t *filter, picture_t *src)
{
    filter_sys_t *sys = filter->p_sys;
    vlc_tick_t last_pts = sys->last_pts;

    sys->last_pts = src->date;

    vlc_vdp_video_field_t *f1 = (vlc_vdp_video_field_t *)src->context;
    if (unlikely(f1 == ((void*)0)))
        return src;
    if (f1->structure != VDP_VIDEO_MIXER_PICTURE_STRUCTURE_FRAME)
        return src;




    picture_t *dst = picture_NewFromFormat(&src->format);

    if (dst == ((void*)0))
        return src;

    vlc_vdp_video_field_t *f2 = vlc_vdp_video_copy(f1);
    if (unlikely(f2 == ((void*)0)))
    {
        picture_Release(dst);
        return src;
    }

    picture_CopyProperties(dst, src);
    dst->context = &f2->context;

    if (last_pts != VLC_TICK_INVALID)
        dst->date = (3 * src->date - last_pts) / 2;
    else
    if (filter->fmt_in.video.i_frame_rate != 0)
        dst->date = src->date + vlc_tick_from_samples(filter->fmt_in.video.i_frame_rate_base
                            ,filter->fmt_in.video.i_frame_rate);
    dst->b_top_field_first = !src->b_top_field_first;
    dst->i_nb_fields = 1;
    src->i_nb_fields = 1;

    assert(src->p_next == ((void*)0));
    src->p_next = dst;

    if (src->b_progressive || src->b_top_field_first)
    {
        f1->structure = VDP_VIDEO_MIXER_PICTURE_STRUCTURE_TOP_FIELD;
        f2->structure = VDP_VIDEO_MIXER_PICTURE_STRUCTURE_BOTTOM_FIELD;
    }
    else
    {
        f1->structure = VDP_VIDEO_MIXER_PICTURE_STRUCTURE_BOTTOM_FIELD;
        f2->structure = VDP_VIDEO_MIXER_PICTURE_STRUCTURE_TOP_FIELD;
    }

    src->b_progressive = 1;
    dst->b_progressive = 1;
    return src;
}
