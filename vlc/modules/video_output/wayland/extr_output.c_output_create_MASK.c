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
typedef  int uint32_t ;
struct wl_registry {int dummy; } ;
struct output_list {int /*<<< orphan*/  outputs; int /*<<< orphan*/  owner; } ;
struct output_data {int name; int version; int /*<<< orphan*/  node; int /*<<< orphan*/ * wl_output; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct output_data*) ; 
 struct output_data* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct output_data*) ; 
 int /*<<< orphan*/  wl_output_cbs ; 
 int /*<<< orphan*/  wl_output_interface ; 
 int /*<<< orphan*/ * FUNC5 (struct wl_registry*,int,int /*<<< orphan*/ *,int) ; 

int FUNC6(struct output_list *ol, struct wl_registry *registry,
                  uint32_t name, uint32_t version)
{
    if (FUNC2(ol == NULL))
        return -1;

    struct output_data *od = FUNC1(sizeof (*od));
    if (FUNC2(od == NULL))
        return -1;

    if (version > 3)
        version = 3;

    od->wl_output = FUNC5(registry, name, &wl_output_interface,
                                     version);
    if (FUNC2(od->wl_output == NULL))
    {
        FUNC0(od);
        return -1;
    }

    od->owner = ol->owner;
    od->name = name;
    od->version = version;

    FUNC4(od->wl_output, &wl_output_cbs, od);
    FUNC3(&ol->outputs, &od->node);
    return 0;
}