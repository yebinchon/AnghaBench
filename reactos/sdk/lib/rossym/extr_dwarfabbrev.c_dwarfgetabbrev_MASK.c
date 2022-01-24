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
typedef  int /*<<< orphan*/  ulong ;
typedef  int /*<<< orphan*/  DwarfAbbrev ;
typedef  int /*<<< orphan*/  Dwarf ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * nil ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

DwarfAbbrev*
FUNC3(Dwarf *d, ulong off, ulong num)
{
	DwarfAbbrev *a;
	int na;

	if((na = FUNC1(d, off, &a)) < 0){
		FUNC2("loadabbrevs: %r");
		return nil;
	}
	return FUNC0(a, na, num);
}