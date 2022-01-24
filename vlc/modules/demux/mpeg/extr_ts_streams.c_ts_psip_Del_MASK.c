#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int i_size; int /*<<< orphan*/ * p_elems; } ;
struct TYPE_5__ {TYPE_4__ eit; scalar_t__ handle; int /*<<< orphan*/  p_eas_es; scalar_t__ p_ctx; } ;
typedef  TYPE_1__ ts_psip_t ;
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void FUNC7( demux_t *p_demux, ts_psip_t *psip )
{
    if( psip->p_ctx )
        FUNC6( psip->p_ctx );

    FUNC5( p_demux, psip->p_eas_es );

    if( psip->handle )
    {
        FUNC1( psip->handle );
        FUNC3( psip->handle );
    }

    for( int i=0; i<psip->eit.i_size; i++ )
        FUNC2( p_demux, psip->eit.p_elems[i] );
    FUNC0( psip->eit );

    FUNC4( psip );
}