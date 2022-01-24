#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_plugin_t ;
struct TYPE_2__ {scalar_t__ usage; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ modules ; 
 int /*<<< orphan*/  vlc_entry__core ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5 (void)
{
    FUNC3 (&modules.lock);

    if (modules.usage == 0)
    {
        /* Fills the module bank structure with the core module infos.
         * This is very useful as it will allow us to consider the core
         * library just as another module, and for instance the configuration
         * options of core will be available in the module bank structure just
         * as for every other module. */
        vlc_plugin_t *plugin = FUNC2(vlc_entry__core);
        if (FUNC1(plugin != NULL))
            FUNC4(plugin);
        FUNC0 ();
    }
    modules.usage++;

    /* We do retain the module bank lock until the plugins are loaded as well.
     * This is ugly, this staged loading approach is needed: LibVLC gets
     * some configuration parameters relevant to loading the plugins from
     * the core (builtin) module. The module bank becomes shared read-only data
     * once it is ready, so we need to fully serialize initialization.
     * DO NOT UNCOMMENT the following line unless you managed to squeeze
     * module_LoadPlugins() before you unlock the mutex. */
    /*vlc_mutex_unlock (&modules.lock);*/
}