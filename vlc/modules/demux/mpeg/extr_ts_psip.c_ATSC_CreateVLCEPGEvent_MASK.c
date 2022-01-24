#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {void* psz_description; void* psz_short_description; void* psz_name; } ;
typedef  TYPE_2__ vlc_epg_event_t ;
typedef  int uint8_t ;
struct TYPE_14__ {int /*<<< orphan*/  p_a65; TYPE_1__* p_stt; } ;
typedef  TYPE_3__ ts_psip_context_t ;
typedef  scalar_t__ time_t ;
struct TYPE_15__ {int i_tag; int* p_data; size_t i_length; struct TYPE_15__* p_next; } ;
typedef  TYPE_4__ dvbpsi_descriptor_t ;
struct TYPE_16__ {int const* p_etm_data; int i_etm_length; } ;
typedef  TYPE_5__ dvbpsi_atsc_ett_t ;
struct TYPE_17__ {int const* i_title; int i_title_length; int /*<<< orphan*/  i_length_seconds; int /*<<< orphan*/  i_event_id; TYPE_4__* p_first_descriptor; int /*<<< orphan*/  i_start_time; } ;
typedef  TYPE_6__ dvbpsi_atsc_eit_event_t ;
typedef  int /*<<< orphan*/  demux_t ;
struct TYPE_12__ {int /*<<< orphan*/  i_gps_utc_offset; } ;

/* Variables and functions */
#define  ATSC_DESCRIPTOR_CONTENT_ADVISORY 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* FUNC5 (char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static vlc_epg_event_t * FUNC9( demux_t *p_demux, ts_psip_context_t *p_basectx,
                                                 const dvbpsi_atsc_eit_event_t *p_evt,
                                                 const dvbpsi_atsc_ett_t *p_ett )
{
#ifndef ATSC_DEBUG_EIT
    FUNC1(p_demux);
#endif
    char *psz_title = FUNC2( p_basectx->p_a65,
                                                       p_evt->i_title, p_evt->i_title_length );
    char *psz_shortdesc_text = NULL;
    char *psz_longdesc_text = NULL;
    vlc_epg_event_t *p_epgevt = NULL;

    time_t i_start = FUNC3( p_evt->i_start_time, p_basectx->p_stt->i_gps_utc_offset );
    FUNC0( i_start );

    for( const dvbpsi_descriptor_t *p_dr = p_evt->p_first_descriptor;
                                    p_dr; p_dr = p_dr->p_next )
    {
        switch( p_dr->i_tag )
        {
            case ATSC_DESCRIPTOR_CONTENT_ADVISORY:
            {
                const uint8_t *p_data = p_dr->p_data;
                size_t i_data = p_dr->i_length;
                uint8_t i_ratings_count = p_dr->p_data[0] & 0x3F;
                p_data++; i_data--;
                for( ; i_ratings_count && i_data > 3; i_ratings_count-- )
                {
                    uint8_t i_rated_dimensions = p_data[1];
                    if( (size_t) i_rated_dimensions * 2 + 3 > i_data ) /* one more sanity check */
                        break;

                    uint8_t desclen = p_data[(size_t) 2 + 2 * i_rated_dimensions];
                    p_data += (size_t) 3 + 2 * i_rated_dimensions;
                    i_data -= (size_t) 3 + 2 * i_rated_dimensions;
                    if( desclen > i_data )
                        break;

                    if( FUNC7(psz_shortdesc_text) )
                        FUNC4( psz_shortdesc_text );
                    psz_shortdesc_text = FUNC2( p_basectx->p_a65, p_data, desclen );
                    if( psz_shortdesc_text ) /* Only keep first for now */
                        break;
                    p_data += desclen;
                    i_data -= desclen;
                }
            }
            default:
                break;
        }
    }

    /* Try to match ETT */
    if( p_ett )
    {
        psz_longdesc_text = FUNC2( p_basectx->p_a65,
                                                             p_ett->p_etm_data, p_ett->i_etm_length );
    }

    if( i_start != VLC_TICK_INVALID && psz_title )
    {
#ifdef ATSC_DEBUG_EIT
        msg_Dbg( p_demux, "EIT Event time %ld +%d %s id 0x%x",
                 i_start, p_evt->i_length_seconds, psz_title, p_evt->i_event_id );
#endif
        p_epgevt = FUNC8( p_evt->i_event_id, i_start, p_evt->i_length_seconds );
        if( p_epgevt )
        {
            p_epgevt->psz_name = FUNC5( &psz_title );
            p_epgevt->psz_short_description = FUNC5( &psz_shortdesc_text );
            p_epgevt->psz_description = FUNC5( &psz_longdesc_text );
        }
    }

    FUNC4( psz_title );
    FUNC4( psz_shortdesc_text );
    FUNC4( psz_longdesc_text );
    return p_epgevt;
}