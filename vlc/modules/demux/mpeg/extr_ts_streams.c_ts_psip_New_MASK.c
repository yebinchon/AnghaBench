#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int i_version; int /*<<< orphan*/  p_ctx; int /*<<< orphan*/ * p_eas_es; int /*<<< orphan*/  eit; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ ts_psip_t ;
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

ts_psip_t *FUNC6( demux_t *p_demux )
{
    ts_psip_t *psip = FUNC3( sizeof( ts_psip_t ) );
    if( !psip )
        return NULL;

    if( !FUNC2( p_demux, &psip->handle ) )
    {
        FUNC1( psip );
        return NULL;
    }

    FUNC0( psip->eit );
    psip->i_version  = -1;
    psip->p_eas_es = NULL;
    psip->p_ctx = FUNC5();
    if( !psip->p_ctx )
    {
        FUNC4( p_demux, psip );
        psip = NULL;
    }

    return psip;
}