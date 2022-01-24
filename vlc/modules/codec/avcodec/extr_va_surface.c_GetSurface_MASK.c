#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  refcount; } ;
typedef  TYPE_1__ vlc_va_surface_t ;
struct TYPE_7__ {unsigned int surface_count; TYPE_1__* surface; } ;
typedef  TYPE_2__ va_pool_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,uintptr_t*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static vlc_va_surface_t *FUNC3(va_pool_t *va_pool)
{
    for (unsigned i = 0; i < va_pool->surface_count; i++) {
        vlc_va_surface_t *surface = &va_pool->surface[i];
        uintptr_t expected = 1;

        if (FUNC0(&surface->refcount, &expected, 2))
        {
            /* the copy should have added an extra reference */
            FUNC1(&surface->refcount, 1);
            FUNC2(surface);
            return surface;
        }
    }
    return NULL;
}