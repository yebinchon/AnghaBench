
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct demux_sys {int sub_packetized; } ;
typedef int es_format_t ;
struct TYPE_4__ {struct demux_sys* p_sys; } ;
typedef TYPE_1__ demux_t ;


 scalar_t__ AppendMockTrack (TYPE_1__*,int *,int,int ) ;
 int SPU_ES ;
 int VLC_CODEC_SUBT ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int es_format_Init (int *,int ,int ) ;

__attribute__((used)) static int
InitSubTracks(demux_t *demux, int group, size_t count)
{
    struct demux_sys *sys = demux->p_sys;

    if (count == 0)
        return VLC_SUCCESS;

    for (size_t i = 0; i < count; ++i)
    {
        es_format_t fmt;
        es_format_Init(&fmt, SPU_ES, VLC_CODEC_SUBT);

        if (AppendMockTrack(demux, &fmt, group, sys->sub_packetized))
            return VLC_ENOMEM;
    }

    return VLC_SUCCESS;
}
