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
struct TYPE_4__ {unsigned int surface_count; int /*<<< orphan*/ * surface; } ;
typedef  TYPE_1__ va_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(va_pool_t *va_pool)
{
    for (unsigned i = 0; i < va_pool->surface_count; i++)
        FUNC1(&va_pool->surface[i]);
    va_pool->surface_count = 0;

    FUNC0(va_pool);
}