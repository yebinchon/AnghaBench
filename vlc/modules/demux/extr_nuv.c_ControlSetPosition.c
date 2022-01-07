
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int int64_t ;
struct TYPE_9__ {char i_type; scalar_t__ i_length; scalar_t__ i_timecode; int i_keyframe; } ;
typedef TYPE_1__ frame_header_t ;
struct TYPE_10__ {int s; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_11__ {int idx; int b_index; scalar_t__ b_seekable; } ;
typedef TYPE_3__ demux_sys_t ;


 scalar_t__ FrameHeaderLoad (TYPE_2__*,TYPE_1__*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int demux_IndexAppend (int *,int,scalar_t__) ;
 int msg_Dbg (TYPE_2__*,char*) ;
 int msg_Warn (TYPE_2__*,char*) ;
 scalar_t__ vlc_stream_Read (int ,int *,scalar_t__) ;
 scalar_t__ vlc_stream_Seek (int ,scalar_t__) ;
 scalar_t__ vlc_stream_Tell (int ) ;

__attribute__((used)) static int ControlSetPosition(demux_t *p_demux, uint64_t offset, bool b_guess)
{
    demux_sys_t *p_sys = p_demux->p_sys;


    if( p_sys->b_seekable && !b_guess )
    {
        if (vlc_stream_Seek(p_demux->s, offset))
            return VLC_EGENERIC;
    }
    else
    {

        if (offset > vlc_stream_Tell(p_demux->s))
        {
            msg_Dbg( p_demux, "unable to seek, skipping frames (slow)" );
        }
        else
        {
            msg_Warn( p_demux, "unable to seek, only forward seeking is possible" );

            return VLC_EGENERIC;
        }
    }

    for( ;; )
    {
        frame_header_t fh;
        uint64_t i_tell;

        if ((i_tell = vlc_stream_Tell(p_demux->s)) >= offset)
            break;

        if( FrameHeaderLoad( p_demux, &fh ) )
            return VLC_EGENERIC;

        if( fh.i_type == 'A' || fh.i_type == 'V' )
        {
            if( !fh.i_keyframe && !p_sys->b_index )
                demux_IndexAppend( &p_sys->idx,(int64_t)fh.i_timecode*1000, i_tell );
        }

        if( fh.i_type != 'R' && fh.i_length > 0 )
        {
            if( vlc_stream_Read( p_demux->s, ((void*)0),
                                 fh.i_length ) != fh.i_length )
                return VLC_EGENERIC;
        }
    }

    return VLC_SUCCESS;
}
