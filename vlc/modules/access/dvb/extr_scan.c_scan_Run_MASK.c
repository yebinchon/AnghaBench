#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int vlc_tick_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  scan_tuner_config_t ;
struct TYPE_18__ {scalar_t__ b_use_nit; } ;
struct TYPE_19__ {int (* pf_tune ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int (* pf_read ) (TYPE_2__*,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ *,size_t*) ;int /*<<< orphan*/  p_cbdata; int /*<<< orphan*/  (* pf_stats ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* pf_filter ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;TYPE_1__ parameter; } ;
typedef  TYPE_2__ scan_t ;
struct TYPE_20__ {int /*<<< orphan*/  i_snr; } ;
typedef  TYPE_3__ scan_session_t ;
typedef  unsigned int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  PSI_PAT_PID ; 
 int SCAN_READ_BUFFER_COUNT ; 
 int /*<<< orphan*/  SI_NIT_PID ; 
 int /*<<< orphan*/  SI_SDT_PID ; 
 int TS_PACKET_SIZE ; 
 int VLC_EGENERIC ; 
 int VLC_ENOITEM ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 unsigned int FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC12 () ; 

int FUNC13( scan_t *p_scan )
{
    scan_tuner_config_t cfg;
    if( FUNC0( p_scan, &cfg ) )
        return VLC_ENOITEM;

    scan_session_t *session = FUNC3( p_scan, &cfg );
    if( FUNC11(session == NULL) )
        return VLC_EGENERIC;

    if( p_scan->pf_tune( p_scan, p_scan->p_cbdata, &cfg ) != VLC_SUCCESS )
    {
        FUNC1( p_scan, session );
        return VLC_EGENERIC;
    }

    p_scan->pf_filter( p_scan, p_scan->p_cbdata, PSI_PAT_PID, true );
    p_scan->pf_filter( p_scan, p_scan->p_cbdata, SI_SDT_PID, true );
    if( p_scan->parameter.b_use_nit )
        p_scan->pf_filter( p_scan, p_scan->p_cbdata, SI_NIT_PID, true );

    /* */
    uint8_t packet[TS_PACKET_SIZE * SCAN_READ_BUFFER_COUNT];
    int64_t i_scan_start = FUNC12();

    for( ;; )
    {
        unsigned i_timeout = FUNC2( session );
        vlc_tick_t i_remaining = FUNC12() - i_scan_start;
        if( i_remaining > i_timeout )
            break;

        size_t i_packet_count = 0;
        int i_ret = p_scan->pf_read( p_scan, p_scan->p_cbdata,
                                     i_timeout - i_remaining,
                                     SCAN_READ_BUFFER_COUNT,
                                     (uint8_t *) &packet, &i_packet_count );

        if( p_scan->pf_stats )
            p_scan->pf_stats( p_scan, p_scan->p_cbdata, &session->i_snr );

        if ( i_ret != VLC_SUCCESS )
            break;

        for( size_t i=0; i< i_packet_count; i++ )
        {
            if( FUNC4( session,
                                   &packet[i * TS_PACKET_SIZE] ) )
                break;
        }
    }

    FUNC1( p_scan, session );

    return VLC_SUCCESS;
}