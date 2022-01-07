
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ plane_count; } ;
typedef TYPE_2__ vlc_chroma_description_t ;
struct demux_sys {scalar_t__ video_chroma; scalar_t__ video_frame_rate; scalar_t__ video_frame_rate_base; scalar_t__ video_width; scalar_t__ video_height; int video_packetized; } ;
struct TYPE_11__ {scalar_t__ i_width; scalar_t__ i_visible_width; scalar_t__ i_height; scalar_t__ i_visible_height; scalar_t__ i_frame_rate; scalar_t__ i_frame_rate_base; int i_chroma; } ;
struct TYPE_13__ {TYPE_1__ video; int i_codec; } ;
typedef TYPE_3__ es_format_t ;
struct TYPE_14__ {struct demux_sys* p_sys; } ;
typedef TYPE_4__ demux_t ;


 scalar_t__ AppendMockTrack (TYPE_4__*,TYPE_3__*,int,int ) ;
 scalar_t__ UINT_MAX ;
 int VIDEO_ES ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int es_format_Init (TYPE_3__*,int ,scalar_t__) ;
 int msg_Err (TYPE_4__*,char*) ;
 TYPE_2__* vlc_fourcc_GetChromaDescription (scalar_t__) ;

__attribute__((used)) static int
InitVideoTracks(demux_t *demux, int group, size_t count)
{
    struct demux_sys *sys = demux->p_sys;

    if (count == 0)
        return VLC_SUCCESS;

    const vlc_chroma_description_t *desc =
        vlc_fourcc_GetChromaDescription(sys->video_chroma);
    if (!desc || desc->plane_count == 0)
        sys->video_chroma = 0;

    const bool frame_rate_ok =
        sys->video_frame_rate != 0 && sys->video_frame_rate != UINT_MAX &&
        sys->video_frame_rate_base != 0 && sys->video_frame_rate_base != UINT_MAX;
    const bool chroma_ok = sys->video_chroma != 0;
    const bool size_ok = sys->video_width != UINT_MAX &&
                         sys->video_height != UINT_MAX;

    if (sys->video_frame_rate == 0 || sys->video_frame_rate_base == 0
     || sys->video_chroma == 0)
    if (!frame_rate_ok || !chroma_ok || !size_ok)
    {
        if (!frame_rate_ok)
            msg_Err(demux, "Invalid video frame rate");
        if (!chroma_ok)
            msg_Err(demux, "Invalid video chroma");
        if (!size_ok)
            msg_Err(demux, "Invalid video size");
        return VLC_EGENERIC;
    }

    for (size_t i = 0; i < count; ++i)
    {
        es_format_t fmt;
        es_format_Init(&fmt, VIDEO_ES, sys->video_chroma);
        fmt.video.i_chroma = fmt.i_codec;
        fmt.video.i_width = fmt.video.i_visible_width = sys->video_width;
        fmt.video.i_height = fmt.video.i_visible_height = sys->video_height;
        fmt.video.i_frame_rate = sys->video_frame_rate;
        fmt.video.i_frame_rate_base = sys->video_frame_rate_base;

        if (AppendMockTrack(demux, &fmt, group, sys->video_packetized))
            return VLC_ENOMEM;
    }
    return VLC_SUCCESS;
}
