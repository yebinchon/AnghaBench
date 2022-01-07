
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int format; } ;
typedef TYPE_5__ vlc_vdp_yuv_getter_t ;
typedef int vlc_object_t ;
struct TYPE_10__ {scalar_t__ i_visible_width; scalar_t__ i_visible_height; scalar_t__ i_x_offset; scalar_t__ i_y_offset; int i_sar_den; int i_sar_num; int i_chroma; } ;
struct TYPE_11__ {TYPE_3__ video; } ;
struct TYPE_8__ {scalar_t__ i_visible_width; scalar_t__ i_visible_height; scalar_t__ i_x_offset; scalar_t__ i_y_offset; int i_sar_num; int i_sar_den; int i_chroma; } ;
struct TYPE_9__ {TYPE_1__ video; } ;
struct TYPE_13__ {TYPE_5__* p_sys; int pf_video_filter; TYPE_4__ fmt_out; TYPE_2__ fmt_in; } ;
typedef TYPE_6__ filter_t ;
typedef int VdpYCbCrFormat ;
typedef int VdpChromaType ;


 int ChromaMatches (int ,int ) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VideoExport_Filter ;
 scalar_t__ unlikely (int ) ;
 int vlc_fourcc_to_vdp_ycc (int ,int *,int *) ;
 TYPE_5__* vlc_obj_malloc (int *,int) ;

__attribute__((used)) static int YCbCrOpen(vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;
    VdpChromaType type;
    VdpYCbCrFormat format;

    if (!vlc_fourcc_to_vdp_ycc(filter->fmt_out.video.i_chroma, &type, &format)
      || !ChromaMatches(type, filter->fmt_in.video.i_chroma))
        return VLC_EGENERIC;

    if (filter->fmt_in.video.i_visible_width
                                       != filter->fmt_out.video.i_visible_width
     || filter->fmt_in.video.i_visible_height
                                      != filter->fmt_out.video.i_visible_height
     || filter->fmt_in.video.i_x_offset != filter->fmt_out.video.i_x_offset
     || filter->fmt_in.video.i_y_offset != filter->fmt_out.video.i_y_offset
     || (filter->fmt_in.video.i_sar_num * filter->fmt_out.video.i_sar_den
          != filter->fmt_in.video.i_sar_den * filter->fmt_out.video.i_sar_num))
        return VLC_EGENERIC;

    vlc_vdp_yuv_getter_t *sys = vlc_obj_malloc(obj, sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
        return VLC_ENOMEM;
    sys->format = format;

    filter->pf_video_filter = VideoExport_Filter;
    filter->p_sys = sys;
    return VLC_SUCCESS;
}
