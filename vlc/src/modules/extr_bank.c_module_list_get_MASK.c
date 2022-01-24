#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t modules_count; TYPE_2__* module; struct TYPE_8__* next; } ;
typedef  TYPE_1__ vlc_plugin_t ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef  TYPE_2__ module_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 TYPE_2__** FUNC2 (TYPE_2__**,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* vlc_plugins ; 

module_t **FUNC4 (size_t *n)
{
    module_t **tab = NULL;
    size_t i = 0;

    FUNC0 (n != NULL);

    for (vlc_plugin_t *lib = vlc_plugins; lib != NULL; lib = lib->next)
    {
        module_t **nt = FUNC2(tab, (i + lib->modules_count) * sizeof (*tab));
        if (FUNC3(nt == NULL))
        {
            FUNC1 (tab);
            *n = 0;
            return NULL;
        }

        tab = nt;
        for (module_t *m = lib->module; m != NULL; m = m->next)
            tab[i++] = m;
    }
    *n = i;
    return tab;
}