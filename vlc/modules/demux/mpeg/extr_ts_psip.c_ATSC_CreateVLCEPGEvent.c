
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {void* psz_description; void* psz_short_description; void* psz_name; } ;
typedef TYPE_2__ vlc_epg_event_t ;
typedef int uint8_t ;
struct TYPE_14__ {int p_a65; TYPE_1__* p_stt; } ;
typedef TYPE_3__ ts_psip_context_t ;
typedef scalar_t__ time_t ;
struct TYPE_15__ {int i_tag; int* p_data; size_t i_length; struct TYPE_15__* p_next; } ;
typedef TYPE_4__ dvbpsi_descriptor_t ;
struct TYPE_16__ {int const* p_etm_data; int i_etm_length; } ;
typedef TYPE_5__ dvbpsi_atsc_ett_t ;
struct TYPE_17__ {int const* i_title; int i_title_length; int i_length_seconds; int i_event_id; TYPE_4__* p_first_descriptor; int i_start_time; } ;
typedef TYPE_6__ dvbpsi_atsc_eit_event_t ;
typedef int demux_t ;
struct TYPE_12__ {int i_gps_utc_offset; } ;



 int EIT_DEBUG_TIMESHIFT (scalar_t__) ;
 scalar_t__ VLC_TICK_INVALID ;
 int VLC_UNUSED (int *) ;
 char* atsc_a65_Decode_multiple_string (int ,int const*,int) ;
 scalar_t__ atsc_a65_GPSTimeToEpoch (int ,int ) ;
 int free (char*) ;
 void* grab_notempty (char**) ;
 int msg_Dbg (int *,char*,scalar_t__,int ,char*,int ) ;
 int unlikely (char*) ;
 TYPE_2__* vlc_epg_event_New (int ,scalar_t__,int ) ;

__attribute__((used)) static vlc_epg_event_t * ATSC_CreateVLCEPGEvent( demux_t *p_demux, ts_psip_context_t *p_basectx,
                                                 const dvbpsi_atsc_eit_event_t *p_evt,
                                                 const dvbpsi_atsc_ett_t *p_ett )
{

    VLC_UNUSED(p_demux);

    char *psz_title = atsc_a65_Decode_multiple_string( p_basectx->p_a65,
                                                       p_evt->i_title, p_evt->i_title_length );
    char *psz_shortdesc_text = ((void*)0);
    char *psz_longdesc_text = ((void*)0);
    vlc_epg_event_t *p_epgevt = ((void*)0);

    time_t i_start = atsc_a65_GPSTimeToEpoch( p_evt->i_start_time, p_basectx->p_stt->i_gps_utc_offset );
    EIT_DEBUG_TIMESHIFT( i_start );

    for( const dvbpsi_descriptor_t *p_dr = p_evt->p_first_descriptor;
                                    p_dr; p_dr = p_dr->p_next )
    {
        switch( p_dr->i_tag )
        {
            case 128:
            {
                const uint8_t *p_data = p_dr->p_data;
                size_t i_data = p_dr->i_length;
                uint8_t i_ratings_count = p_dr->p_data[0] & 0x3F;
                p_data++; i_data--;
                for( ; i_ratings_count && i_data > 3; i_ratings_count-- )
                {
                    uint8_t i_rated_dimensions = p_data[1];
                    if( (size_t) i_rated_dimensions * 2 + 3 > i_data )
                        break;

                    uint8_t desclen = p_data[(size_t) 2 + 2 * i_rated_dimensions];
                    p_data += (size_t) 3 + 2 * i_rated_dimensions;
                    i_data -= (size_t) 3 + 2 * i_rated_dimensions;
                    if( desclen > i_data )
                        break;

                    if( unlikely(psz_shortdesc_text) )
                        free( psz_shortdesc_text );
                    psz_shortdesc_text = atsc_a65_Decode_multiple_string( p_basectx->p_a65, p_data, desclen );
                    if( psz_shortdesc_text )
                        break;
                    p_data += desclen;
                    i_data -= desclen;
                }
            }
            default:
                break;
        }
    }


    if( p_ett )
    {
        psz_longdesc_text = atsc_a65_Decode_multiple_string( p_basectx->p_a65,
                                                             p_ett->p_etm_data, p_ett->i_etm_length );
    }

    if( i_start != VLC_TICK_INVALID && psz_title )
    {




        p_epgevt = vlc_epg_event_New( p_evt->i_event_id, i_start, p_evt->i_length_seconds );
        if( p_epgevt )
        {
            p_epgevt->psz_name = grab_notempty( &psz_title );
            p_epgevt->psz_short_description = grab_notempty( &psz_shortdesc_text );
            p_epgevt->psz_description = grab_notempty( &psz_longdesc_text );
        }
    }

    free( psz_title );
    free( psz_shortdesc_text );
    free( psz_longdesc_text );
    return p_epgevt;
}
