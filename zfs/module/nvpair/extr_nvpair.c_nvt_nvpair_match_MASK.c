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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int NV_UNIQUE_NAME ; 
 int NV_UNIQUE_NAME_TYPE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC4(nvpair_t *nvp1, nvpair_t *nvp2, uint32_t nvflag)
{
	boolean_t match = B_FALSE;
	if (nvflag & NV_UNIQUE_NAME_TYPE) {
		if (FUNC3(FUNC1(nvp1), FUNC1(nvp2)) == 0 &&
		    FUNC2(nvp1) == FUNC2(nvp2))
			match = B_TRUE;
	} else {
		FUNC0(nvflag == 0 || nvflag & NV_UNIQUE_NAME);
		if (FUNC3(FUNC1(nvp1), FUNC1(nvp2)) == 0)
			match = B_TRUE;
	}
	return (match);
}