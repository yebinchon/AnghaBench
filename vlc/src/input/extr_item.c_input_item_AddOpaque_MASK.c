#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; TYPE_2__* opaques; } ;
typedef  TYPE_1__ input_item_t ;
struct TYPE_6__ {struct TYPE_6__* next; void* value; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ input_item_opaque_t ;

/* Variables and functions */
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(input_item_t *item, const char *name, void *value)
{
    FUNC0(name != NULL);

    size_t namelen = FUNC3(name);
    input_item_opaque_t *entry = FUNC1(sizeof (*entry) + namelen);
    if (FUNC4(entry == NULL))
        return VLC_ENOMEM;

    FUNC2(entry->name, name, namelen + 1);
    entry->value = value;

    FUNC5(&item->lock);
    entry->next = item->opaques;
    item->opaques = entry;
    FUNC6(&item->lock);
    return VLC_SUCCESS;
}