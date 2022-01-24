#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* p_encoder; int /*<<< orphan*/  lock_out; int /*<<< orphan*/  pp_pics; int /*<<< orphan*/  p_buffers; } ;
typedef  TYPE_1__ transcode_encoder_t ;
struct TYPE_8__ {scalar_t__ i_cat; } ;
struct TYPE_7__ {TYPE_5__ fmt_out; TYPE_5__ fmt_in; } ;

/* Variables and functions */
 scalar_t__ VIDEO_ES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6( transcode_encoder_t *p_enc )
{
    if( p_enc->p_encoder )
    {
        if( p_enc->p_encoder->fmt_in.i_cat == VIDEO_ES )
        {
            FUNC0( p_enc->p_buffers );
            FUNC3( p_enc->pp_pics );
            FUNC4( &p_enc->lock_out );
        }
        FUNC1( &p_enc->p_encoder->fmt_in );
        FUNC1( &p_enc->p_encoder->fmt_out );
        FUNC5(p_enc->p_encoder);
    }
    FUNC2( p_enc );
}