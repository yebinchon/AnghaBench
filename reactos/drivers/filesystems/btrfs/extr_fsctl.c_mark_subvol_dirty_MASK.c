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
struct TYPE_5__ {int dirty; int /*<<< orphan*/  list_entry_dirty; } ;
typedef  TYPE_1__ root ;
struct TYPE_6__ {int need_write; int /*<<< orphan*/  dirty_subvols_lock; int /*<<< orphan*/  dirty_subvols; } ;
typedef  TYPE_2__ device_extension ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(device_extension* Vcb, root* r) {
    if (!r->dirty) {
        r->dirty = true;

        FUNC0(&Vcb->dirty_subvols_lock, true);
        FUNC2(&Vcb->dirty_subvols, &r->list_entry_dirty);
        FUNC1(&Vcb->dirty_subvols_lock);
    }

    Vcb->need_write = true;
}