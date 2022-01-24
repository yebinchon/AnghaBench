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
typedef  scalar_t__ ulong ;
struct TYPE_6__ {scalar_t__ tag; } ;
struct TYPE_7__ {TYPE_1__ attrs; } ;
typedef  TYPE_2__ DwarfSym ;
typedef  int /*<<< orphan*/  Dwarf ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

int
FUNC3(Dwarf *d, ulong unit, ulong tag, DwarfSym *s)
{
	if(FUNC0(d, unit, s) < 0) {
		return -1;
	}

	FUNC1(d, s, 0);	/* s is now the CompileUnit */
	if(s->attrs.tag == tag) {
		return 0;
	}
	while(FUNC1(d, s, 1) == 1)
		if(s->attrs.tag == tag) {
			return 0;
		}
	FUNC2("symbol with tag 0x%lux not found", tag);
	return -1;
}