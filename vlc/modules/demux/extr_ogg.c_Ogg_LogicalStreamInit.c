
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_blocks; int * pp_append; } ;
struct TYPE_6__ {int i_first_frame_index; int b_initializing; int b_contiguous; TYPE_1__ queue; int dts; int i_pcr; int fmt_old; int fmt; } ;
typedef TYPE_2__ logical_stream_t ;


 int UNKNOWN_ES ;
 int VLC_TICK_INVALID ;
 int date_Set (int *,int ) ;
 int es_format_Init (int *,int ,int ) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void Ogg_LogicalStreamInit( logical_stream_t *p_stream )
{
    memset( p_stream, 0, sizeof(logical_stream_t) );
    es_format_Init( &p_stream->fmt, UNKNOWN_ES, 0 );
    es_format_Init( &p_stream->fmt_old, UNKNOWN_ES, 0 );
    p_stream->i_pcr = VLC_TICK_INVALID;
    p_stream->i_first_frame_index = 1;
    date_Set( &p_stream->dts, VLC_TICK_INVALID );
    p_stream->b_initializing = 1;
    p_stream->b_contiguous = 1;
    p_stream->queue.pp_append = &p_stream->queue.p_blocks;
}
