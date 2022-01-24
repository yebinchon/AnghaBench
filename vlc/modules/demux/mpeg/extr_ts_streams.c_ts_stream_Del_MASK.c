#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ p_head; } ;
struct TYPE_6__ {scalar_t__ p_data; } ;
struct TYPE_8__ {TYPE_2__ prepcr; scalar_t__ p_proc; scalar_t__ p_sections_proc; TYPE_1__ gather; int /*<<< orphan*/  p_es; } ;
typedef  TYPE_3__ ts_stream_t ;
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5( demux_t *p_demux, ts_stream_t *pes )
{
    FUNC2( p_demux, pes->p_es );

    if( pes->gather.p_data )
        FUNC0( pes->gather.p_data );

    if( pes->p_sections_proc )
        FUNC3( pes->p_sections_proc );

    if( pes->p_proc )
        FUNC4( pes->p_proc );

    if( pes->prepcr.p_head )
        FUNC0( pes->prepcr.p_head );

    FUNC1( pes );
}