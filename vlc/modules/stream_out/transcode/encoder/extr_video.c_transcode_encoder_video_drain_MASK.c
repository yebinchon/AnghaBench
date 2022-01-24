#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int b_abort; int /*<<< orphan*/  thread; int /*<<< orphan*/  lock_out; int /*<<< orphan*/  cond; scalar_t__ b_threaded; } ;
typedef  TYPE_1__ transcode_encoder_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7( transcode_encoder_t *p_enc, block_t **out )
{
    if( !p_enc->b_threaded )
    {
        block_t *p_block;
        do {
            p_block = FUNC1( p_enc, NULL );
            FUNC0( out, p_block );
        } while( p_block );
    }
    else
    {
        if( p_enc->b_threaded && !p_enc->b_abort )
        {
            FUNC5( &p_enc->lock_out );
            p_enc->b_abort = true;
            FUNC3( &p_enc->cond );
            FUNC6( &p_enc->lock_out );
            FUNC4( p_enc->thread, NULL );
        }
        FUNC0( out, FUNC2( p_enc ) );
    }
    return VLC_SUCCESS;
}