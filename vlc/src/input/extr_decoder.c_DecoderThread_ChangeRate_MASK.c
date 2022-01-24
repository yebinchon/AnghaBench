#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int i_cat; } ;
struct TYPE_5__ {TYPE_1__ fmt_out; } ;
struct decoder_owner {float output_rate; int /*<<< orphan*/  lock; int /*<<< orphan*/  i_spu_channel; int /*<<< orphan*/ * p_vout; int /*<<< orphan*/ * p_aout; TYPE_2__ dec; } ;
typedef  TYPE_2__ decoder_t ;

/* Variables and functions */
#define  AUDIO_ES 130 
#define  SPU_ES 129 
#define  VIDEO_ES 128 
 int /*<<< orphan*/  VOUT_SPU_CHANNEL_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,float) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,float) ; 

__attribute__((used)) static void FUNC8( struct decoder_owner *p_owner, float rate )
{
    decoder_t *p_dec = &p_owner->dec;

    FUNC2( p_dec, "changing rate: %f", rate );
    FUNC4( &p_owner->lock );
    switch( p_dec->fmt_out.i_cat )
    {
        case VIDEO_ES:
            if( p_owner->p_vout != NULL )
                FUNC6( p_owner->p_vout, rate );
            break;
        case AUDIO_ES:
            if( p_owner->p_aout != NULL )
                FUNC0( p_owner->p_aout, rate );
            break;
        case SPU_ES:
            if( p_owner->p_vout != NULL )
            {
                FUNC1(p_owner->i_spu_channel != VOUT_SPU_CHANNEL_INVALID);
                FUNC7(p_owner->p_vout, p_owner->i_spu_channel,
                                   rate );
            }
            break;
        default:
            FUNC3();
    }
    p_owner->output_rate = rate;
    FUNC5( &p_owner->lock );
}