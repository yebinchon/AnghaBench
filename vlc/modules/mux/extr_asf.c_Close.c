
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_10__ {int p_access; TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_11__ {struct TYPE_11__* psz_rating; struct TYPE_11__* psz_comment; struct TYPE_11__* psz_copyright; struct TYPE_11__* psz_author; struct TYPE_11__* psz_title; int tracks; int fmt; struct TYPE_11__* p_extra; } ;
typedef TYPE_2__ sout_mux_sys_t ;
typedef int block_t ;
typedef TYPE_2__ asf_track_t ;


 scalar_t__ VLC_SUCCESS ;
 int * asf_header_create (TYPE_1__*,int) ;
 int * asf_packet_flush (TYPE_1__*) ;
 int * asf_stream_end_create (TYPE_1__*) ;
 int es_format_Clean (int *) ;
 int free (TYPE_2__*) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 scalar_t__ sout_AccessOutSeek (int ,int ) ;
 int sout_AccessOutWrite (int ,int *) ;
 int vlc_array_clear (int *) ;
 size_t vlc_array_count (int *) ;
 TYPE_2__* vlc_array_item_at_index (int *,size_t) ;

__attribute__((used)) static void Close( vlc_object_t * p_this )
{
    sout_mux_t *p_mux = (sout_mux_t*)p_this;
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    block_t *out;

    msg_Dbg( p_mux, "Asf muxer closed" );


    if( (out = asf_packet_flush( p_mux ) ) )
    {
        sout_AccessOutWrite( p_mux->p_access, out );
    }

    if( ( out = asf_stream_end_create( p_mux ) ) )
    {
        sout_AccessOutWrite( p_mux->p_access, out );
    }


    if( sout_AccessOutSeek( p_mux->p_access, 0 ) == VLC_SUCCESS )
    {
        out = asf_header_create( p_mux, 0 );
        sout_AccessOutWrite( p_mux->p_access, out );
    }


    for( size_t i = 0; i < vlc_array_count( &p_sys->tracks ); i++ )
    {
        asf_track_t *track = vlc_array_item_at_index( &p_sys->tracks, i );
        free( track->p_extra );
        es_format_Clean( &track->fmt );
        free( track );
    }

    vlc_array_clear( &p_sys->tracks );
    free( p_sys->psz_title );
    free( p_sys->psz_author );
    free( p_sys->psz_copyright );
    free( p_sys->psz_comment );
    free( p_sys->psz_rating );
    free( p_sys );
}
