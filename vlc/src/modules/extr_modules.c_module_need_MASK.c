#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int force; int /*<<< orphan*/  logger; } ;
typedef  TYPE_1__ vlc_object_t ;
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_VAR_STRING ; 
 int /*<<< orphan*/  generic_start ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char const*,char const*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 

module_t *FUNC4(vlc_object_t *obj, const char *cap, const char *name,
                      bool strict)
{
    const bool b_force_backup = obj->force; /* FIXME: remove this */
    module_t *module = FUNC3(obj->logger, cap, name, strict,
                                       generic_start, obj);
    if (module != NULL) {
        FUNC1(obj, "module-name", VLC_VAR_STRING);
        FUNC2(obj, "module-name", FUNC0(module));
    }

    obj->force = b_force_backup;
    return module;
}