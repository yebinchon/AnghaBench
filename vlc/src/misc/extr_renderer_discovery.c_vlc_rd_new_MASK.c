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
struct vlc_renderer_discovery_owner {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  p_cfg; int /*<<< orphan*/  psz_name; int /*<<< orphan*/ * p_module; struct vlc_renderer_discovery_owner owner; } ;
typedef  TYPE_1__ vlc_renderer_discovery_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char const*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

vlc_renderer_discovery_t *
FUNC7(vlc_object_t *p_obj, const char *psz_name,
           const struct vlc_renderer_discovery_owner *restrict owner)
{
    vlc_renderer_discovery_t *p_rd;

    p_rd = FUNC5(p_obj, sizeof(*p_rd), "renderer discovery");
    if(!p_rd)
        return NULL;
    FUNC2(FUNC0(&p_rd->psz_name, &p_rd->p_cfg, psz_name));

    p_rd->owner = *owner;
    p_rd->p_module = FUNC3(p_rd, "renderer_discovery",
                                 p_rd->psz_name, true);
    if (p_rd->p_module == NULL)
    {
        FUNC4(p_rd, "no suitable renderer discovery module for '%s'",
            psz_name);
        FUNC2(p_rd->psz_name);
        FUNC1(p_rd->p_cfg);
        FUNC6(p_rd);
        p_rd = NULL;
    }

    return p_rd;
}