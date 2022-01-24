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
struct TYPE_3__ {int /*<<< orphan*/  acount; int /*<<< orphan*/  count; int /*<<< orphan*/  la; } ;
typedef  TYPE_1__ kmem_cache_t ;
typedef  void* PVOID ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void* FUNC2(kmem_cache_t *kc, int flags)
{
    PVOID  ptr = NULL;
    ptr = FUNC0(&(kc->la));
    if (ptr) {
        FUNC1(&kc->count);
        FUNC1(&kc->acount);
    }
    return ptr;
}