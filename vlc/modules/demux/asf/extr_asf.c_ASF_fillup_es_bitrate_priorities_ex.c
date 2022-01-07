
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_7__ {size_t i_track; } ;
typedef TYPE_1__ demux_sys_t ;
struct TYPE_8__ {size_t i_stream_number_count; int * pi_stream_numbers; } ;
typedef TYPE_2__ asf_object_bitrate_mutual_exclusion_t ;
struct TYPE_9__ {size_t i_count; int * pi_stream_numbers; } ;
typedef TYPE_3__ asf_es_priorities_t ;


 TYPE_2__* ASF_FindObject (void*,int *,int ) ;
 scalar_t__ SIZE_MAX ;
 int asf_object_bitrate_mutual_exclusion_guid ;
 int * vlc_alloc (size_t,int) ;

__attribute__((used)) static void ASF_fillup_es_bitrate_priorities_ex( demux_sys_t *p_sys, void *p_hdr,
                                                 asf_es_priorities_t *p_prios )
{

    asf_object_bitrate_mutual_exclusion_t *p_bitrate_mutex =
            ASF_FindObject( p_hdr, &asf_object_bitrate_mutual_exclusion_guid, 0 );
    if (! p_bitrate_mutex ) return;





    p_prios->pi_stream_numbers = vlc_alloc( p_sys->i_track, sizeof( uint16_t ) );
    if ( !p_prios->pi_stream_numbers ) return;

    if ( p_bitrate_mutex->i_stream_number_count )
    {

        for ( uint16_t i = 1; i < p_bitrate_mutex->i_stream_number_count; i++ )
        {
            if ( p_prios->i_count > p_sys->i_track || i > p_sys->i_track ) break;
            p_prios->pi_stream_numbers[ p_prios->i_count++ ] = p_bitrate_mutex->pi_stream_numbers[ i ];
        }
    }

}
