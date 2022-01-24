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
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  items; } ;
struct TYPE_6__ {struct TYPE_6__* path; struct TYPE_6__* abspath; TYPE_1__ conf; int /*<<< orphan*/ * module; int /*<<< orphan*/  handle; int /*<<< orphan*/  unloadable; } ;
typedef  TYPE_2__ vlc_plugin_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(vlc_plugin_t *plugin)
{
    FUNC0(plugin != NULL);
#ifdef HAVE_DYNAMIC_PLUGINS
    assert(!plugin->unloadable || atomic_load(&plugin->handle) == 0);
#endif

    if (plugin->module != NULL)
        FUNC4(plugin->module);

    FUNC2(plugin->conf.items, plugin->conf.size);
#ifdef HAVE_DYNAMIC_PLUGINS
    free(plugin->abspath);
    free(plugin->path);
#endif
    FUNC3(plugin);
}