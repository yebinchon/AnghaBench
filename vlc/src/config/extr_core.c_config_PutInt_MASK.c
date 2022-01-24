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
struct TYPE_7__ {scalar_t__ i; } ;
struct TYPE_6__ {scalar_t__ i; } ;
struct TYPE_8__ {scalar_t__ i; } ;
struct TYPE_9__ {TYPE_2__ value; TYPE_1__ max; TYPE_3__ min; int /*<<< orphan*/  i_type; } ;
typedef  TYPE_4__ module_config_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (char const*) ; 
 int config_dirty ; 
 int /*<<< orphan*/  config_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(const char *psz_name, int64_t i_value )
{
    module_config_t *p_config = FUNC2( psz_name );

    /* sanity checks */
    FUNC1(p_config != NULL);
    FUNC1(FUNC0(p_config->i_type));

    if (i_value < p_config->min.i)
        i_value = p_config->min.i;
    if (i_value > p_config->max.i)
        i_value = p_config->max.i;

    FUNC4 (&config_lock);
    p_config->value.i = i_value;
    config_dirty = true;
    FUNC3 (&config_lock);
}