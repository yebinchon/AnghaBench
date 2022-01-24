#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_plugin_t ;
typedef  scalar_t__ (* vlc_plugin_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  vlc_plugin_desc_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

vlc_plugin_t *FUNC3(vlc_plugin_cb entry)
{
    vlc_plugin_t *plugin = FUNC1();
    if (FUNC0(plugin == NULL))
        return NULL;

    if (entry(vlc_plugin_desc_cb, plugin) != 0)
    {
        FUNC2(plugin); /* partially initialized plug-in... */
        plugin = NULL;
    }
    return plugin;
}