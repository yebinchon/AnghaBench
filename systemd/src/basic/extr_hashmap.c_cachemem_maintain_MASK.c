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
struct TYPE_4__ {int active; int /*<<< orphan*/  n_allocated; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ CacheMem ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(CacheMem *mem, unsigned size) {
        FUNC1(mem);

        if (!FUNC0(mem->ptr, mem->n_allocated, size)) {
                if (size > 0)
                        return -ENOMEM;
        }

        if (!mem->active) {
                mem->active = true;
                return true;
        }

        return false;
}