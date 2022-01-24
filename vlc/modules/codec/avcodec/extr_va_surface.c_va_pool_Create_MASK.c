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
typedef  int /*<<< orphan*/  vlc_va_t ;
struct va_pool_cfg {scalar_t__ (* pf_create_device ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  poolrefs; scalar_t__ surface_count; struct va_pool_cfg callbacks; } ;
typedef  TYPE_1__ va_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

va_pool_t * FUNC6(vlc_va_t *va, const struct va_pool_cfg *cbs)
{
    va_pool_t *va_pool = FUNC1(sizeof(*va_pool));
    if (FUNC5(va_pool == NULL))
        return NULL;

    va_pool->callbacks = *cbs;

    /* */
    if (cbs->pf_create_device(va)) {
        FUNC3(va, "Failed to create device");
        return NULL;
    }
    FUNC2(va, "CreateDevice succeed");

    va_pool->surface_count = 0;
    FUNC0(&va_pool->poolrefs, 1);

    return va_pool;
}