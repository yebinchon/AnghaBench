
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_9__ {int ** pp_elems; } ;
struct TYPE_8__ {TYPE_3__ hds_streams; } ;
typedef TYPE_2__ stream_sys_t ;
typedef int ssize_t ;
typedef int hds_stream_t ;


 scalar_t__ header_unfinished (TYPE_2__*) ;
 int read_chunk_data (int *,void*,size_t,int *) ;
 int send_flv_header (int *,TYPE_2__*,void*,size_t) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ vlc_array_count (TYPE_3__*) ;

__attribute__((used)) static ssize_t Read( stream_t *s, void *buffer, size_t i_read )
{
    stream_sys_t *p_sys = s->p_sys;

    if ( vlc_array_count( &p_sys->hds_streams ) == 0 )
        return 0;
    if( unlikely(i_read == 0) )
        return 0;


    hds_stream_t *stream = p_sys->hds_streams.pp_elems[0];

    if ( header_unfinished( p_sys ) )
        return send_flv_header( stream, p_sys, buffer, i_read );

    return read_chunk_data( (vlc_object_t*)s, buffer, i_read, stream );
}
