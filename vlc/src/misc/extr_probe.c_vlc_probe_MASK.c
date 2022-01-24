#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t count; int /*<<< orphan*/ * list; } ;
typedef  TYPE_1__ vlc_probe_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void *FUNC6 (vlc_object_t *obj,
                 const char *capability, size_t *restrict pcount)
{
    vlc_probe_t *probe = FUNC4 (obj, sizeof(*probe), "probe");
    if (FUNC3(probe == NULL))
    {
        *pcount = 0;
        return NULL;
    }
    probe->list = NULL;
    probe->count = 0;

    module_t *mod = FUNC0 (probe, capability, NULL, false);
    if (mod != NULL)
    {
        FUNC2 (probe, "probing halted");
        FUNC1 (probe, mod);
    }

    void *ret = probe->list;
    *pcount = probe->count;
    FUNC5(probe);
    return ret;
}