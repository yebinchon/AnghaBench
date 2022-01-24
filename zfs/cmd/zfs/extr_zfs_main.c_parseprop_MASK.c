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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static boolean_t
FUNC6(nvlist_t *props, char *propname)
{
	char *propval;

	if ((propval = FUNC5(propname, '=')) == NULL) {
		(void) FUNC0(stderr, "%s", FUNC1("missing "
		    "'=' for property=value argument\n"));
		return (B_FALSE);
	}
	*propval = '\0';
	propval++;
	if (FUNC4(props, propname)) {
		(void) FUNC0(stderr, FUNC1("property '%s' "
		    "specified multiple times\n"), propname);
		return (B_FALSE);
	}
	if (FUNC3(props, propname, propval) != 0)
		FUNC2();
	return (B_TRUE);
}