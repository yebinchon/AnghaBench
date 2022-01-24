#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct swap_entries {int dummy; } ;
struct hashmap_base_entry {int dummy; } ;
struct TYPE_3__ {struct hashmap_base_entry b; } ;
struct TYPE_4__ {TYPE_1__ p; } ;
typedef  int /*<<< orphan*/  HashmapBase ;

/* Variables and functions */
 unsigned int _IDX_SWAP_BEGIN ; 
 unsigned int _IDX_SWAP_END ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct hashmap_base_entry* FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 TYPE_2__* FUNC2 (struct swap_entries*,unsigned int) ; 

__attribute__((used)) static struct hashmap_base_entry *FUNC3(HashmapBase *h, struct swap_entries *swap,
                                                    unsigned idx) {
        if (idx < _IDX_SWAP_BEGIN)
                return FUNC1(h, idx);

        if (idx < _IDX_SWAP_END)
                return &FUNC2(swap, idx)->p.b;

        FUNC0("Invalid index");
}