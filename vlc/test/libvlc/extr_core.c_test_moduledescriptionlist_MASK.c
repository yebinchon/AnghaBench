#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* p_next; int /*<<< orphan*/ * psz_help; int /*<<< orphan*/ * psz_longname; int /*<<< orphan*/ * psz_shortname; int /*<<< orphan*/ * psz_name; } ;
typedef  TYPE_1__ libvlc_module_description_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 (libvlc_module_description_t *list)
{
    libvlc_module_description_t *module = list;
    while ( module ) {
        FUNC0 (FUNC2 (module->psz_name) );
        FUNC0 (FUNC2 (module->psz_shortname) );
        FUNC0 (module->psz_longname == NULL || FUNC2 (module->psz_longname));
        FUNC0 (module->psz_help == NULL || FUNC2 (module->psz_help));
        module = module->p_next;
    }    

    FUNC1 (list);
}