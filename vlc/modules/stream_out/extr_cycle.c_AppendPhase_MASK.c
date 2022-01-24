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
typedef  int /*<<< orphan*/  vlc_tick_t ;
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/  chain; int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ sout_cycle_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(sout_cycle_t ***restrict pp,
                       vlc_tick_t offset, const char *chain)
{

    size_t len = FUNC2(chain);
    sout_cycle_t *cycle = FUNC0(sizeof (*cycle) + len);
    if (FUNC3(cycle == NULL))
        return -1;

    cycle->next = NULL;
    cycle->offset = offset;
    FUNC1(cycle->chain, chain, len + 1);

    **pp = cycle;
    *pp = &cycle->next;
    return 0;
}