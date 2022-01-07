
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_9__ {TYPE_3__** pp_elems; } ;
struct TYPE_7__ {int duration_seconds; scalar_t__ flv_header_len; TYPE_4__ hds_streams; scalar_t__ live; } ;
typedef TYPE_2__ stream_sys_t ;
struct TYPE_8__ {int bitrate; } ;
typedef TYPE_3__ hds_stream_t ;


 int BITRATE_AS_BYTES_PER_SECOND ;
 scalar_t__ vlc_array_count (TYPE_4__*) ;

__attribute__((used)) static uint64_t get_stream_size( stream_t* s )
{
    stream_sys_t *p_sys = s->p_sys;

    if ( p_sys->live )
        return 0;

    if ( vlc_array_count( &p_sys->hds_streams ) == 0 )
        return 0;

    hds_stream_t* hds_stream = p_sys->hds_streams.pp_elems[0];

    if ( hds_stream->bitrate == 0 )
        return 0;

    return p_sys->flv_header_len + p_sys->duration_seconds *
        hds_stream->bitrate * BITRATE_AS_BYTES_PER_SECOND;
}
