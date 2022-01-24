#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct filter_level {float default_val; int /*<<< orphan*/  Range; int /*<<< orphan*/  level; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
struct TYPE_6__ {int /*<<< orphan*/  f; } ;
struct TYPE_5__ {int /*<<< orphan*/  f; } ;
struct TYPE_7__ {TYPE_2__ max; TYPE_1__ min; } ;
typedef  TYPE_3__ module_config_t ;
typedef  int /*<<< orphan*/  filter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filter_level*,int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (char const*) ; 
 float FUNC3 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC4(filter_t *filter, struct filter_level *range, const char *p_name, float def)
{
    module_config_t *cfg = FUNC2(p_name);
    range->min = cfg->min.f;
    range->max = cfg->max.f;
    range->default_val = def;

    float val = FUNC3( filter, p_name );

    FUNC1( &range->level, FUNC0( range, &range->Range, val ) );
}