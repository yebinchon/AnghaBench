#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef  TYPE_1__ vlc_plugin_t ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_7__ {scalar_t__ usage; int /*<<< orphan*/  lock; int /*<<< orphan*/ * caps_tree; int /*<<< orphan*/ * caches; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_4__ modules ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vlc_modcap_free ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* vlc_plugins ; 

void FUNC9 (bool b_plugins)
{
    vlc_plugin_t *libs = NULL;
    block_t *caches = NULL;
    void *caps_tree = NULL;

    /* If plugins were _not_ loaded, then the caller still has the bank lock
     * from module_InitBank(). */
    if( b_plugins )
        FUNC6 (&modules.lock);
    else
        FUNC5(&modules.lock);

    FUNC0 (modules.usage > 0);
    if (--modules.usage == 0)
    {
        FUNC2 ();
        libs = vlc_plugins;
        caches = modules.caches;
        caps_tree = modules.caps_tree;
        vlc_plugins = NULL;
        modules.caches = NULL;
        modules.caps_tree = NULL;
    }
    FUNC7 (&modules.lock);

    FUNC4(caps_tree, vlc_modcap_free);

    while (libs != NULL)
    {
        vlc_plugin_t *lib = libs;

        libs = lib->next;
        FUNC3(lib);
        FUNC8(lib);
    }

    FUNC1(caches);
}