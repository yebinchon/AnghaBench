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
struct TYPE_4__ {int allunits; } ;
typedef  TYPE_1__ DwarfSym ;
typedef  int /*<<< orphan*/  Dwarf ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

int
FUNC1(Dwarf *d, DwarfSym *s)
{
	if(FUNC0(d, 0, s) < 0)
		return -1;
	s->allunits = 1;
	return 0;
}