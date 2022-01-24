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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  subi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ rand48 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

long FUNC4 (void)
{
    long ret;

    FUNC2 (&rand48.lock);
    FUNC0 ();
    ret = FUNC1 (rand48.subi);
    FUNC3 (&rand48.lock);
    return ret;
}