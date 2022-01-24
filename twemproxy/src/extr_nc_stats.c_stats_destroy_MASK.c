#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stats {int /*<<< orphan*/  current; int /*<<< orphan*/  shadow; int /*<<< orphan*/  sum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stats*) ; 
 int /*<<< orphan*/  FUNC1 (struct stats*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct stats*) ; 

void
FUNC4(struct stats *st)
{
    FUNC3(st);
    FUNC2(&st->sum);
    FUNC2(&st->shadow);
    FUNC2(&st->current);
    FUNC1(st);
    FUNC0(st);
}