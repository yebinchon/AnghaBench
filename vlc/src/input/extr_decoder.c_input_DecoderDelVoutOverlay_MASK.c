#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct decoder_owner {int /*<<< orphan*/  lock; int /*<<< orphan*/  p_vout; } ;
struct TYPE_5__ {scalar_t__ i_cat; } ;
struct TYPE_6__ {TYPE_1__ fmt_in; } ;
typedef  TYPE_2__ decoder_t ;

/* Variables and functions */
 scalar_t__ VIDEO_ES ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct decoder_owner* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 

int FUNC5( decoder_t *dec, size_t channel )
{
    struct decoder_owner *owner = FUNC1( dec );
    FUNC0( dec->fmt_in.i_cat == VIDEO_ES );

    FUNC2( &owner->lock );

    if( !owner->p_vout )
    {
        FUNC3( &owner->lock );
        return VLC_EGENERIC;
    }
    FUNC4( owner->p_vout, channel );

    FUNC3( &owner->lock );
    return VLC_SUCCESS;
}