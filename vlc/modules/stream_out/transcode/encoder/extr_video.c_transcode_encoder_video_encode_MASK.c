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
struct TYPE_4__ {int /*<<< orphan*/  lock_out; int /*<<< orphan*/  cond; int /*<<< orphan*/  pp_pics; int /*<<< orphan*/  picture_pool_has_room; TYPE_3__* p_encoder; int /*<<< orphan*/  b_threaded; } ;
typedef  TYPE_1__ transcode_encoder_t ;
typedef  int /*<<< orphan*/  picture_t ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_5__ {int /*<<< orphan*/ * (* pf_encode_video ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

block_t * FUNC7( transcode_encoder_t *p_enc, picture_t *p_pic )
{
    if( !p_enc->b_threaded )
    {
        return p_enc->p_encoder->pf_encode_video( p_enc->p_encoder, p_pic );
    }
    else
    {
        FUNC6( &p_enc->picture_pool_has_room );
        FUNC4( &p_enc->lock_out );
        FUNC0( p_pic );
        FUNC1( p_enc->pp_pics, p_pic );
        FUNC3( &p_enc->cond );
        FUNC5( &p_enc->lock_out );
        return NULL;
    }
}