#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  i_continuity_counter; int /*<<< orphan*/  b_discontinuity; int /*<<< orphan*/  i_pid; } ;
typedef  TYPE_1__ tsmux_stream_t ;
typedef  int /*<<< orphan*/  dvbpsi_t ;
typedef  int /*<<< orphan*/  dvbpsi_psi_section_t ;
typedef  int /*<<< orphan*/  dvbpsi_pat_t ;
typedef  int /*<<< orphan*/  block_t ;
typedef  int /*<<< orphan*/  PEStoTSCallback ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8( dvbpsi_t *p_dvbpsi,
               void *p_opaque, PEStoTSCallback pf_callback,
               int i_tsid, int i_pat_version_number,
               tsmux_stream_t *p_pat,
               unsigned i_programs, tsmux_stream_t *p_pmt, const int *pi_programs_number )
{
    dvbpsi_pat_t         patpsi;
    dvbpsi_psi_section_t *p_section;

    FUNC4( &patpsi, i_tsid, i_pat_version_number, true /* b_current_next */ );
    /* add all programs */
    for (unsigned i = 0; i < i_programs; i++ )
        FUNC5( &patpsi, pi_programs_number[i], p_pmt[i].i_pid );

    p_section = FUNC6( p_dvbpsi, &patpsi, 0 );
    if( FUNC7(p_section) )
    {
        block_t *p_block = FUNC1( p_section );
        if( FUNC7(p_block) )
        {
            FUNC0( p_opaque, pf_callback, p_block, p_pat->i_pid,
                     &p_pat->b_discontinuity, &p_pat->i_continuity_counter );
        }
        FUNC2( p_section );
    }
    FUNC3( &patpsi );
}