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
struct TYPE_5__ {size_t size; TYPE_3__* items; } ;
struct TYPE_6__ {TYPE_1__ conf; } ;
typedef  TYPE_2__ vlc_plugin_t ;
struct TYPE_7__ {scalar_t__ b_removed; int /*<<< orphan*/  i_type; } ;
typedef  TYPE_3__ module_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(const vlc_plugin_t *plugin)
{
    for (size_t i = 0; i < plugin->conf.size; i++)
    {
        const module_config_t *item = plugin->conf.items + i;

        if (!FUNC0(item->i_type))
            continue;
        if (item->b_removed)
            continue;
        return true;
    }
    return false;
}