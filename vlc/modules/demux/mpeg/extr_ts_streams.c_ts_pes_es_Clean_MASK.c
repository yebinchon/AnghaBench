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
struct TYPE_6__ {int /*<<< orphan*/  fmt; scalar_t__ id; } ;
typedef  TYPE_1__ ts_es_t ;
struct TYPE_7__ {int /*<<< orphan*/  out; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_pmt_es; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  ES_OUT_SET_ES_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3( demux_t *p_demux, ts_es_t *p_es )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if( p_es->id )
    {
        /* Ensure we don't wait for overlap hacks #14257 */
        FUNC1( p_demux->out, ES_OUT_SET_ES_STATE, p_es->id, false );
        FUNC2( p_demux->out, p_es->id );
        p_sys->i_pmt_es--;
    }
    FUNC0( &p_es->fmt );
}