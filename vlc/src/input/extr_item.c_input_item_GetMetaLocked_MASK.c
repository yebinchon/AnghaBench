#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_meta_type_t ;
struct TYPE_3__ {int /*<<< orphan*/  p_meta; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ input_item_t ;

/* Variables and functions */
 char const* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

const char *FUNC2(input_item_t *item,
                                     vlc_meta_type_t meta_type)
{
    FUNC1(&item->lock);

    if (!item->p_meta)
        return NULL;

    return FUNC0(item->p_meta, meta_type);
}