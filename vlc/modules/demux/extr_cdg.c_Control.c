
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int va_list ;
typedef scalar_t__ uint64_t ;
struct TYPE_5__ {int s; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_6__ {int pts; } ;
typedef TYPE_2__ demux_sys_t ;


 int CDG_FRAME_RATE ;
 int CDG_FRAME_SIZE ;
 int DEMUX_SET_POSITION ;
 int DEMUX_SET_TIME ;
 int PosToDate (TYPE_1__*) ;
 int date_Set (int *,int ) ;
 int demux_vaControlHelper (int ,int ,int,int,int,int,int ) ;
 int vlc_stream_Seek (int ,scalar_t__) ;
 scalar_t__ vlc_stream_Tell (int ) ;

__attribute__((used)) static int Control( demux_t *p_demux, int i_query, va_list args )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    uint64_t i_old_offset = vlc_stream_Tell( p_demux->s );
    int i_ret = demux_vaControlHelper( p_demux->s, 0, -1,
                                       8*CDG_FRAME_SIZE*CDG_FRAME_RATE, CDG_FRAME_SIZE,
                                       i_query, args );
    if( !i_ret && ( i_query == DEMUX_SET_POSITION || i_query == DEMUX_SET_TIME ) )
    {
        date_Set( &p_sys->pts, PosToDate( p_demux ) );
        if ( i_old_offset > vlc_stream_Tell( p_demux->s ) )
            i_ret = vlc_stream_Seek( p_demux->s, 0 );
        else
            i_ret = vlc_stream_Seek( p_demux->s, i_old_offset );
    }

    return i_ret;
}
