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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  OPERNAMENSP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC6(const char *name, Oid namespace, Oid left, Oid right)
{
	HeapTuple tup;
	Oid opoid = InvalidOid;

	tup = FUNC5(OPERNAMENSP,
						  FUNC3(name),
						  FUNC2(left),
						  FUNC2(right),
						  FUNC2(namespace));
	if (FUNC1(tup))
	{
		opoid = FUNC0(tup);
		FUNC4(tup);
	}

	return opoid;
}