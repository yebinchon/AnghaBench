
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_packetized; } ;
typedef TYPE_1__ es_format_t ;
typedef int demux_t ;


 int VIDEO_ES ;
 int VLC_CODEC_MPGV ;
 void* codec_init (int *,TYPE_1__*) ;
 int es_format_Init (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void *mpv_init (demux_t *demux)
{
    es_format_t fmt;

    es_format_Init (&fmt, VIDEO_ES, VLC_CODEC_MPGV);
    fmt.b_packetized = 0;
    return codec_init (demux, &fmt);
}
