
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_3__ {int s; } ;
typedef TYPE_1__ demux_t ;


 int CDG_FRAME_DELTA ;
 int CDG_FRAME_SIZE ;
 int vlc_stream_Tell (int ) ;

__attribute__((used)) static vlc_tick_t PosToDate( demux_t *p_demux )
{
    return vlc_stream_Tell( p_demux->s ) / CDG_FRAME_SIZE * CDG_FRAME_DELTA;
}
