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
struct TYPE_3__ {scalar_t__ tab; } ;
typedef  TYPE_1__ TabPageObject ;

/* Variables and functions */
 scalar_t__ INVALID_TABPAGE_VALUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(TabPageObject *self)
{
    if (self->tab == INVALID_TABPAGE_VALUE)
    {
	FUNC1(FUNC0("attempt to refer to deleted tab page"));
	return -1;
    }

    return 0;
}