#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {float Maximum; float Default; float Minimum; } ;
struct filter_level {int min; int max; int default_val; TYPE_3__ Range; int /*<<< orphan*/  level; } ;
struct TYPE_7__ {int f; } ;
struct TYPE_6__ {int f; } ;
struct TYPE_9__ {TYPE_2__ max; TYPE_1__ min; } ;
typedef  TYPE_4__ module_config_t ;
typedef  int /*<<< orphan*/  filter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,float) ; 
 TYPE_4__* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 float FUNC3 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC4(filter_t *filter, struct filter_level *range, const char *p_name, float def)
{
    int level = 0;

    module_config_t *cfg = FUNC1(p_name);
    if (FUNC2(cfg == NULL))
    {
        range->min         = 0.;
        range->max         = 2.;
        range->default_val = 1.;
    }
    else
    {
        range->min         = cfg->min.f;
        range->max         = cfg->max.f;
        range->default_val = def;

        float val = FUNC3( filter, p_name );

        if (val > range->default_val)
            level = (range->Range.Maximum - range->Range.Default) * (val - range->default_val) /
                    (range->max - range->default_val);
        else if (val < range->default_val)
            level = (range->Range.Minimum - range->Range.Default) * (val - range->default_val) /
                    (range->min - range->default_val);
    }

    FUNC0( &range->level, range->Range.Default + level );
}