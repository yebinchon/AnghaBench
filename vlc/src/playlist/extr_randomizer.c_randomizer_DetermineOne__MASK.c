#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {size_t size; } ;
struct randomizer {size_t head; size_t history; int /*<<< orphan*/  xsubi; TYPE_1__ items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct randomizer*,size_t,size_t) ; 

__attribute__((used)) static inline void
FUNC3(struct randomizer *r, size_t avoid_last_n)
{
    FUNC0(r->head < r->items.size);
    FUNC0(r->items.size - r->head > avoid_last_n);
    size_t range_len = r->items.size - r->head - avoid_last_n;
    size_t selected = r->head + (FUNC1(r->xsubi) % range_len);
    FUNC2(r, r->head, selected);

    if (r->head == r->history)
        r->history++;
    r->head++;
}