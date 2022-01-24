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
typedef  int /*<<< orphan*/  vout_thread_t ;
typedef  int /*<<< orphan*/  subpicture_updater_t ;
struct TYPE_4__ {scalar_t__ i_channel; int b_subtitle; scalar_t__ i_order; } ;
typedef  TYPE_1__ subpicture_t ;
struct decoder_owner {scalar_t__ i_spu_channel; int vout_thread_started; int vout_order; scalar_t__ i_spu_order; int /*<<< orphan*/  lock; int /*<<< orphan*/ * p_vout; int /*<<< orphan*/  p_clock; int /*<<< orphan*/  p_resource; scalar_t__ error; } ;
typedef  enum vlc_vout_order { ____Placeholder_vlc_vout_order } vlc_vout_order ;
typedef  int /*<<< orphan*/  decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  DECODER_SPU_VOUT_WAIT_DURATION ; 
 int VLC_VOUT_ORDER_NONE ; 
 scalar_t__ VOUT_SPU_CHANNEL_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct decoder_owner* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct decoder_owner*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  on_vout_started ; 
 int /*<<< orphan*/  on_vout_stopped ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static subpicture_t *FUNC12( decoder_t *p_dec,
                                     const subpicture_updater_t *p_updater )
{
    struct decoder_owner *p_owner = FUNC1( p_dec );
    vout_thread_t *p_vout = NULL;
    subpicture_t *p_subpic;
    int i_attempts = 30;

    while( i_attempts-- )
    {
        if( p_owner->error )
            break;

        p_vout = FUNC3( p_owner->p_resource );
        if( p_vout )
            break;

        FUNC8( DECODER_SPU_VOUT_WAIT_DURATION );
    }

    if( !p_vout )
    {
        FUNC4( p_dec, "no vout found, dropping subpicture" );
        if( p_owner->p_vout )
        {
            FUNC0(p_owner->i_spu_channel != VOUT_SPU_CHANNEL_INVALID);
            FUNC2(p_owner, on_vout_stopped, p_owner->p_vout);

            FUNC6( &p_owner->lock );
            FUNC11(p_owner->p_vout,
                                             p_owner->i_spu_channel);
            p_owner->i_spu_channel = VOUT_SPU_CHANNEL_INVALID;

            FUNC10(p_owner->p_vout);
            p_owner->p_vout = NULL; // the DecoderThread should not use the old vout anymore
            p_owner->vout_thread_started = false;
            FUNC7( &p_owner->lock );
        }
        return NULL;
    }

    if( p_owner->p_vout != p_vout )
    {
        if (p_owner->p_vout) /* notify the previous vout deletion unlocked */
            FUNC2(p_owner, on_vout_stopped, p_owner->p_vout);

        FUNC6(&p_owner->lock);

        if (p_owner->p_vout)
        {
            /* Unregister the SPU channel of the previous vout */
            FUNC0(p_owner->i_spu_channel != VOUT_SPU_CHANNEL_INVALID);
            FUNC11(p_owner->p_vout,
                                             p_owner->i_spu_channel);
            FUNC10(p_owner->p_vout);
            p_owner->p_vout = NULL; // the DecoderThread should not use the old vout anymore
            p_owner->vout_thread_started = false;
        }

        enum vlc_vout_order channel_order;
        p_owner->i_spu_channel =
            FUNC9(p_vout, p_owner->p_clock,
                                                   &channel_order);
        p_owner->i_spu_order = 0;

        if (p_owner->i_spu_channel == VOUT_SPU_CHANNEL_INVALID)
        {
            /* The new vout doesn't support SPU, aborting... */
            FUNC7(&p_owner->lock);
            FUNC10(p_vout);
            return NULL;
        }

        p_owner->p_vout = p_vout;
        p_owner->vout_thread_started = true;
        p_owner->vout_order = channel_order;
        FUNC7(&p_owner->lock);

        FUNC0(channel_order != VLC_VOUT_ORDER_NONE);
        FUNC2(p_owner, on_vout_started, p_vout, channel_order);
    }
    else
        FUNC10(p_vout);

    p_subpic = FUNC5( p_updater );
    if( p_subpic )
    {
        p_subpic->i_channel = p_owner->i_spu_channel;
        p_subpic->i_order = p_owner->i_spu_order++;
        p_subpic->b_subtitle = true;
    }

    return p_subpic;
}