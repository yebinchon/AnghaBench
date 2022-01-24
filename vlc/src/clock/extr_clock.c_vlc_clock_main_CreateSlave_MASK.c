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
typedef  int /*<<< orphan*/  vlc_clock_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  rc; } ;
typedef  TYPE_1__ vlc_clock_main_t ;
struct vlc_clock_cbs {int dummy; } ;
typedef  enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;

/* Variables and functions */
#define  AUDIO_ES 130 
#define  SPU_ES 129 
#define  VIDEO_ES 128 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,unsigned int,struct vlc_clock_cbs const*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

vlc_clock_t *FUNC4(vlc_clock_main_t *main_clock,
                                        enum es_format_category_e cat,
                                        const struct vlc_clock_cbs *cbs,
                                        void *cbs_data)
{
    /* SPU outputs should have lower priority than VIDEO outputs since they
     * necessarily depend on a VIDEO output. This mean that a SPU reference
     * point will always be overridden by AUDIO or VIDEO outputs. Cf.
     * vlc_clock_monotonic_to_system_locked */
    unsigned priority;
    switch (cat)
    {
        case VIDEO_ES:
        case AUDIO_ES:
            priority = 1;
            break;
        case SPU_ES:
        default:
            priority = 2;
            break;
    }

    vlc_clock_t *clock = FUNC0(main_clock, priority, cbs,
                                               cbs_data);
    if (!clock)
        return NULL;

    FUNC2(&main_clock->lock);
    FUNC1(clock);
    main_clock->rc++;
    FUNC3(&main_clock->lock);

    return clock;
}