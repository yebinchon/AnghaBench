
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_8__ {unsigned int i_tracks; struct TYPE_8__* track; int p_fragsindex; scalar_t__ p_meta; scalar_t__ p_title; int p_root; } ;
typedef TYPE_2__ demux_sys_t ;


 int FragResetContext (TYPE_2__*) ;
 int MP4_BoxFree (int ) ;
 int MP4_Fragments_Index_Delete (int ) ;
 int MP4_TrackClean (int ,TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int vlc_input_title_Delete (scalar_t__) ;
 int vlc_meta_Delete (scalar_t__) ;

__attribute__((used)) static void Close ( vlc_object_t * p_this )
{
    demux_t * p_demux = (demux_t *)p_this;
    demux_sys_t *p_sys = p_demux->p_sys;
    unsigned int i_track;

    msg_Dbg( p_demux, "freeing all memory" );

    FragResetContext( p_sys );

    MP4_BoxFree( p_sys->p_root );

    if( p_sys->p_title )
        vlc_input_title_Delete( p_sys->p_title );

    if( p_sys->p_meta )
        vlc_meta_Delete( p_sys->p_meta );

    MP4_Fragments_Index_Delete( p_sys->p_fragsindex );

    for( i_track = 0; i_track < p_sys->i_tracks; i_track++ )
        MP4_TrackClean( p_demux->out, &p_sys->track[i_track] );
    free( p_sys->track );

    free( p_sys );
}
