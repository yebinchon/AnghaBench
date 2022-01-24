#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* p; } ;
typedef  TYPE_1__ spu_t ;
struct TYPE_5__ {char const* source_chain_update; char const* source_chain_current; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ spu_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 void* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(spu_t *spu, const char *filters)
{
    spu_private_t *sys = spu->p;

    FUNC2(&sys->lock);

    FUNC0(sys->source_chain_update);
    if (filters)
    {
        sys->source_chain_update = FUNC1(filters);
        FUNC0(sys->source_chain_current);
        sys->source_chain_current = FUNC1(filters);
    }
    else if (sys->source_chain_current)
        sys->source_chain_update = FUNC1(sys->source_chain_current);

    FUNC3(&sys->lock);
}