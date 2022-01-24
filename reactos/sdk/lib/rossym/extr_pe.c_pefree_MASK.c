#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nsections; int nsymbols; struct TYPE_5__* sect; struct TYPE_5__* symtab; struct TYPE_5__* name; } ;
typedef  TYPE_1__ Pe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(Pe *pe) {
	int i;
	for (i = 0; i < pe->nsections; i++) {
		FUNC1(FUNC0(&pe->sect[i]));
	}
	for (i = 0; i < pe->nsymbols; i++) {
		FUNC2(pe->symtab[i].name);
	}
	FUNC2(pe->symtab);
	FUNC2(pe->sect);
	FUNC2(pe);
}