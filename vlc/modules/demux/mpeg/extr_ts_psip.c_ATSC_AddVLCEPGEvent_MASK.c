#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_epg_t ;
struct TYPE_5__ {int /*<<< orphan*/  i_start; } ;
typedef  TYPE_1__ vlc_epg_event_t ;
typedef  int /*<<< orphan*/  ts_psip_context_t ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  dvbpsi_atsc_ett_t ;
typedef  int /*<<< orphan*/  dvbpsi_atsc_eit_event_t ;
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static time_t FUNC3( demux_t *p_demux, ts_psip_context_t *p_basectx,
                                   const dvbpsi_atsc_eit_event_t *p_event,
                                   const dvbpsi_atsc_ett_t *p_ett,
                                   vlc_epg_t *p_epg )
{
    vlc_epg_event_t *p_evt = FUNC0( p_demux, p_basectx,
                                                     p_event, p_ett );
    if( p_evt )
    {
        if( FUNC1( p_epg, p_evt ) )
            return p_evt->i_start;
        FUNC2( p_evt );
    }
    return VLC_TICK_INVALID;
}