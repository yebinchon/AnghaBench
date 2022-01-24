#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  p_obj; } ;
typedef  TYPE_3__ scan_t ;
struct TYPE_12__ {size_t i_nit; size_t i_sdt; int /*<<< orphan*/ ** pp_sdt; int /*<<< orphan*/ ** pp_nit; } ;
struct TYPE_11__ {int /*<<< orphan*/ * p_nit; int /*<<< orphan*/ * p_sdt; int /*<<< orphan*/ * p_pat; } ;
struct TYPE_14__ {TYPE_2__ others; int /*<<< orphan*/  cfg; int /*<<< orphan*/  i_snr; TYPE_1__ local; } ;
typedef  TYPE_4__ scan_session_t ;
typedef  int /*<<< orphan*/  dvbpsi_sdt_t ;
typedef  int /*<<< orphan*/  dvbpsi_pat_t ;
typedef  int /*<<< orphan*/  dvbpsi_nit_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC4( scan_t *p_scan, scan_session_t *p_session )
{
    dvbpsi_pat_t *p_pat = p_session->local.p_pat;
    dvbpsi_sdt_t *p_sdt = p_session->local.p_sdt;
    dvbpsi_nit_t *p_nit = p_session->local.p_nit;

    /* Parse PAT (Declares only local services/programs) */
    if( p_pat )
        FUNC1( p_scan->p_obj, p_scan, p_pat, &p_session->cfg, p_session->i_snr );

    /* Parse NIT (Declares local services/programs) */
    if( p_nit )
        FUNC0( p_scan->p_obj, p_scan, p_nit, &p_session->cfg );

    /* Parse SDT (Maps names to programs) */
    if( p_sdt )
        FUNC2( p_scan->p_obj, p_scan, p_sdt );

    /* Do the same for all other networks */
    for( size_t i=0; i<p_session->others.i_nit; i++ )
        FUNC0( p_scan->p_obj, p_scan, p_session->others.pp_nit[i], NULL );

    /* Map service name for all other ts/networks */
    for( size_t i=0; i<p_session->others.i_sdt; i++ )
        FUNC2( p_scan->p_obj, p_scan, p_session->others.pp_sdt[i] );

    /* */
    FUNC3( p_session );
}