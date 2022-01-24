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
struct TYPE_4__ {scalar_t__ cdtpid; scalar_t__ tdtpid; scalar_t__ eitpid; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ ts_si_t ;
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5( demux_t *p_demux, ts_si_t *si )
{
    if( FUNC2( si->handle ) )
        FUNC1( si->handle );
    FUNC3( si->handle );
    if( si->eitpid )
        FUNC0( p_demux, si->eitpid );
    if( si->tdtpid )
        FUNC0( p_demux, si->tdtpid );
    if( si->cdtpid )
        FUNC0( p_demux, si->cdtpid );
    FUNC4( si );
}