
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {scalar_t__ i_default_sample_duration; scalar_t__ i_default_sample_size; } ;
struct TYPE_8__ {TYPE_1__ context; } ;
typedef TYPE_3__ mp4_track_t ;
struct TYPE_7__ {scalar_t__ i_current_box_type; int * p_fragment_atom; } ;
struct TYPE_9__ {size_t i_tracks; TYPE_3__* track; TYPE_2__ context; int * p_moov; } ;
typedef TYPE_4__ demux_sys_t ;


 int MP4_BoxFree (int *) ;

__attribute__((used)) static void FragResetContext( demux_sys_t *p_sys )
{
    if( p_sys->context.p_fragment_atom )
    {
        if( p_sys->context.p_fragment_atom != p_sys->p_moov )
            MP4_BoxFree( p_sys->context.p_fragment_atom );
        p_sys->context.p_fragment_atom = ((void*)0);
    }
    p_sys->context.i_current_box_type = 0;

    for ( uint32_t i=0; i<p_sys->i_tracks; i++ )
    {
        mp4_track_t *p_track = &p_sys->track[i];
        p_track->context.i_default_sample_size = 0;
        p_track->context.i_default_sample_duration = 0;
    }
}
