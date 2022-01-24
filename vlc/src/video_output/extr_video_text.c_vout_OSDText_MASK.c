#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_thread_t ;
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_10__ {TYPE_3__* p_sys; int /*<<< orphan*/  pf_destroy; int /*<<< orphan*/  pf_update; int /*<<< orphan*/  pf_validate; } ;
typedef  TYPE_1__ subpicture_updater_t ;
struct TYPE_11__ {int i_channel; scalar_t__ i_start; int b_ephemer; int b_absolute; int b_fade; scalar_t__ i_stop; } ;
typedef  TYPE_2__ subpicture_t ;
struct TYPE_12__ {int position; struct TYPE_12__* text; } ;
typedef  TYPE_3__ osd_spu_updater_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  OSDTextDestroy ; 
 int /*<<< orphan*/  OSDTextUpdate ; 
 int /*<<< orphan*/  OSDTextValidate ; 
 int SUBPICTURE_ALIGN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int) ; 
 TYPE_3__* FUNC3 (char const*) ; 
 TYPE_2__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 

void FUNC8(vout_thread_t *vout, int channel,
                   int position, vlc_tick_t duration, const char *text)
{
    FUNC0( (position & ~SUBPICTURE_ALIGN_MASK) == 0);
    if (!FUNC5(vout, "osd") || duration <= 0)
        return;

    osd_spu_updater_sys_t *sys = FUNC2(sizeof(*sys));
    if (!sys)
        return;
    sys->position = position;
    sys->text     = FUNC3(text);

    subpicture_updater_t updater = {
        .pf_validate = OSDTextValidate,
        .pf_update   = OSDTextUpdate,
        .pf_destroy  = OSDTextDestroy,
        .p_sys       = sys,
    };
    subpicture_t *subpic = FUNC4(&updater);
    if (!subpic) {
        FUNC1(sys->text);
        FUNC1(sys);
        return;
    }

    subpic->i_channel  = channel;
    subpic->i_start    = FUNC6();
    subpic->i_stop     = subpic->i_start + duration;
    subpic->b_ephemer  = true;
    subpic->b_absolute = false;
    subpic->b_fade     = true;

    FUNC7(vout, subpic);
}