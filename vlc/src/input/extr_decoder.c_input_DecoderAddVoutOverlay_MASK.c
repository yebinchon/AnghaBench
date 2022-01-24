#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t i_channel; int b_ephemer; scalar_t__ i_order; int /*<<< orphan*/  i_stop; int /*<<< orphan*/  i_start; } ;
typedef  TYPE_2__ subpicture_t ;
struct decoder_owner {int /*<<< orphan*/  lock; int /*<<< orphan*/  p_vout; } ;
typedef  int ssize_t ;
struct TYPE_8__ {scalar_t__ i_cat; } ;
struct TYPE_10__ {TYPE_1__ fmt_in; } ;
typedef  TYPE_3__ decoder_t ;

/* Variables and functions */
 scalar_t__ VIDEO_ES ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct decoder_owner* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7( decoder_t *dec, subpicture_t *sub,
                                 size_t *channel )
{
    struct decoder_owner *owner = FUNC1( dec );
    FUNC0( dec->fmt_in.i_cat == VIDEO_ES );
    FUNC0( sub && channel );

    FUNC2( &owner->lock );

    if( !owner->p_vout )
    {
        FUNC3( &owner->lock );
        return VLC_EGENERIC;
    }
    ssize_t channel_id =
        FUNC6( owner->p_vout );
    if (channel_id == -1)
    {
        FUNC3( &owner->lock );
        return VLC_EGENERIC;
    }
    sub->i_start = sub->i_stop = FUNC4();
    sub->i_channel = *channel = channel_id;
    sub->i_order = 0;
    sub->b_ephemer = true;
    FUNC5( owner->p_vout, sub );

    FUNC3( &owner->lock );
    return VLC_SUCCESS;
}