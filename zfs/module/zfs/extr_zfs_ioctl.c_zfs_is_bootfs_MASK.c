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
typedef  int /*<<< orphan*/  objset_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int B_FALSE ; 
 int /*<<< orphan*/  FTAG ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC5(const char *name)
{
	objset_t *os;

	if (FUNC0(name, FTAG, &os) == 0) {
		boolean_t ret;
		ret = (FUNC1(os) == FUNC4(FUNC3(os)));
		FUNC2(os, FTAG);
		return (ret);
	}
	return (B_FALSE);
}