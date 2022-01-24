#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_12__ {int /*<<< orphan*/  (* play ) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ audio_output_t ;
struct TYPE_11__ {int discontinuity; int /*<<< orphan*/  clock; } ;
struct TYPE_10__ {int /*<<< orphan*/  i_format; } ;
struct TYPE_13__ {int /*<<< orphan*/  original_pts; TYPE_2__ sync; int /*<<< orphan*/  filters; TYPE_1__ mixer_format; } ;
typedef  TYPE_4__ aout_owner_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(audio_output_t *aout)
{
    aout_owner_t *owner = FUNC3 (aout);

    if (!owner->mixer_format.i_format)
        return;

    block_t *block = FUNC1 (owner->filters);
    if (block)
        aout->play(aout, block, FUNC6());

    FUNC0(aout);

    FUNC5(owner->sync.clock);
    FUNC2(owner->filters);

    owner->sync.discontinuity = true;
    owner->original_pts = VLC_TICK_INVALID;
}