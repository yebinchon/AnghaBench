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
struct TYPE_4__ {void* defnamespace; void* defname; int /*<<< orphan*/ * arg; } ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_1__ DefElem ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (void*) ; 
 TYPE_1__* FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static DefElem *
FUNC5(Datum *texts, int nelems)
{
	DefElem *elem = FUNC3(sizeof(*elem));
	switch (nelems)
	{
		case 1:
			elem->defname = FUNC4(FUNC0(texts[0]));
			break;
		case 3:
			elem->arg = (Node *) FUNC2(FUNC4(FUNC0(texts[2])));
			/* FALLTHROUGH */
		case 2:
			elem->defname = FUNC4(FUNC0(texts[1]));
			elem->defnamespace = FUNC4(FUNC0(texts[0]));
			break;
		default:
			FUNC1(ERROR, "%d elements invalid for defelem", nelems);
	}
	return elem;
}