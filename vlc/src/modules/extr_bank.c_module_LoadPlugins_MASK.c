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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_2__ {int usage; int /*<<< orphan*/  lock; int /*<<< orphan*/  caps_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC5 (size_t*) ; 
 TYPE_1__ modules ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_modcap_sort ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(vlc_object_t *obj)
{
    /*vlc_mutex_assert (&modules.lock); not for static mutexes :( */

    if (modules.usage == 1)
    {
        FUNC3 ();
#ifdef HAVE_DYNAMIC_PLUGINS
        msg_Dbg (obj, "searching plug-in modules");
        AllocateAllPlugins (obj);
#endif
        FUNC2 ();
        FUNC1 ();

        FUNC7(modules.caps_tree, vlc_modcap_sort);
    }
    FUNC8 (&modules.lock);

    size_t count;
    module_t **list = FUNC5 (&count);
    FUNC4 (list);
    FUNC6 (obj, "plug-ins loaded: %zu modules", count);
}