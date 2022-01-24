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
typedef  int /*<<< orphan*/  vlc_spu_highlight_t ;
struct decoder_owner {int /*<<< orphan*/  lock; int /*<<< orphan*/  p_vout; scalar_t__ p_sout_input; } ;
struct TYPE_5__ {scalar_t__ i_cat; } ;
struct TYPE_6__ {TYPE_1__ fmt_in; } ;
typedef  TYPE_2__ decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  SOUT_INPUT_SET_SPU_HIGHLIGHT ; 
 scalar_t__ SPU_ES ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct decoder_owner* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

int FUNC6( decoder_t *dec,
                                  const vlc_spu_highlight_t *spu_hl )
{
    struct decoder_owner *p_owner = FUNC1( dec );
    FUNC0( dec->fmt_in.i_cat == SPU_ES );

#ifdef ENABLE_SOUT
    if( p_owner->p_sout_input )
        sout_InputControl( p_owner->p_sout_input, SOUT_INPUT_SET_SPU_HIGHLIGHT, spu_hl );
#endif

    FUNC3( &p_owner->lock );
    if( !p_owner->p_vout )
    {
        FUNC4( &p_owner->lock );
        return VLC_EGENERIC;
    }

    FUNC5( p_owner->p_vout, spu_hl );

    FUNC4( &p_owner->lock );
    return VLC_SUCCESS;
}