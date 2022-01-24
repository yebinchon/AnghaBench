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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct services_discovery_owner_t {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * p_module; int /*<<< orphan*/  psz_name; struct services_discovery_owner_t owner; int /*<<< orphan*/ * description; int /*<<< orphan*/  p_cfg; } ;
typedef  TYPE_1__ services_discovery_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

services_discovery_t *FUNC7(vlc_object_t *parent, const char *cfg,
    const struct services_discovery_owner_t *restrict owner)
{
    services_discovery_t *sd = FUNC5(parent, sizeof (*sd),
                                                 "services discovery");
    if (FUNC4(sd == NULL))
        return NULL;

    FUNC1(FUNC0(&sd->psz_name, &sd->p_cfg, cfg));
    sd->description = NULL;
    sd->owner = *owner;

    sd->p_module = FUNC2(sd, "services_discovery",
                               sd->psz_name, true);
    if (sd->p_module == NULL)
    {
        FUNC3(sd, "no suitable services discovery module");
        FUNC6(sd);
        sd = NULL;
    }

    return sd;
}