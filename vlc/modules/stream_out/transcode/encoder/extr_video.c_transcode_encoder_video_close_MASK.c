#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int b_abort; int /*<<< orphan*/  picture_pool_has_room; int /*<<< orphan*/  cond; TYPE_3__* p_encoder; int /*<<< orphan*/  thread; int /*<<< orphan*/  lock_out; scalar_t__ b_threaded; } ;
typedef  TYPE_1__ transcode_encoder_t ;
struct TYPE_5__ {int /*<<< orphan*/ * p_module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7( transcode_encoder_t *p_enc )
{
    if( p_enc->b_threaded && !p_enc->b_abort )
    {
        FUNC4( &p_enc->lock_out );
        p_enc->b_abort = true;
        FUNC2( &p_enc->cond );
        FUNC5( &p_enc->lock_out );
        FUNC3( p_enc->thread, NULL );
    }

    /* Close encoder */
    FUNC0( p_enc->p_encoder, p_enc->p_encoder->p_module );
    p_enc->p_encoder->p_module = NULL;

    FUNC1( &p_enc->cond );
    FUNC6( &p_enc->picture_pool_has_room );
}