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
struct TYPE_5__ {TYPE_4__ eits; TYPE_4__ etts; scalar_t__ p_a65; scalar_t__ p_vct; scalar_t__ p_stt; scalar_t__ p_mgt; } ;
typedef  TYPE_1__ ts_psip_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

void FUNC9( ts_psip_context_t *p_ctx )
{
    FUNC1( !p_ctx->p_mgt || !p_ctx->etts.i_size );
    FUNC1( !p_ctx->p_vct || !p_ctx->eits.i_size );

    if( p_ctx->p_mgt )
        FUNC5( p_ctx->p_mgt );
    if( p_ctx->p_stt )
        FUNC6( p_ctx->p_stt );
    if ( p_ctx->p_vct )
        FUNC7( p_ctx->p_vct );
    if( p_ctx->p_a65 )
        FUNC2( p_ctx->p_a65 );
    /* Things only used for ETT/EIT */
    for( int i=0; i<p_ctx->etts.i_size; i++ )
        FUNC4( p_ctx->etts.p_elems[i] );
    for( int i=0; i<p_ctx->eits.i_size; i++ )
        FUNC3( p_ctx->eits.p_elems[i] );
    FUNC0( p_ctx->etts );
    FUNC0( p_ctx->eits );
    FUNC8( p_ctx );
}