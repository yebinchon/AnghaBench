#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int i_size; TYPE_2__** p_elems; } ;
struct TYPE_8__ {TYPE_6__ eits; } ;
typedef  TYPE_1__ ts_psip_context_t ;
struct TYPE_9__ {scalar_t__ i_source_id; } ;
typedef  TYPE_2__ dvbpsi_atsc_eit_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC2( ts_psip_context_t *p_ctx, dvbpsi_atsc_eit_t *p_eit )
{
    for( int i=0; i<p_ctx->eits.i_size; i++ )
    {
        dvbpsi_atsc_eit_t *p_cur_eit = p_ctx->eits.p_elems[i];
        if( p_cur_eit->i_source_id == p_eit->i_source_id )
        {
            FUNC1( p_cur_eit ); /* Updated version */
            p_ctx->eits.p_elems[i] = p_eit;
            return;
        }
    }
    FUNC0( p_ctx->eits, p_eit );
}