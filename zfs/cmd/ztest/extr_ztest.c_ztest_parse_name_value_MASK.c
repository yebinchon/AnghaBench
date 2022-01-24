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
struct TYPE_3__ {int zo_special_vdevs; int zo_verbose; } ;
typedef  TYPE_1__ ztest_shared_opts_t ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int ZTEST_VDEV_CLASS_OFF ; 
 int ZTEST_VDEV_CLASS_ON ; 
 int ZTEST_VDEV_CLASS_RND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (char*,char) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(const char *input, ztest_shared_opts_t *zo)
{
	char name[32];
	char *value;
	int state = ZTEST_VDEV_CLASS_RND;

	(void) FUNC4(name, input, sizeof (name));

	value = FUNC2(name, '=');
	if (value == NULL) {
		(void) FUNC0(stderr, "missing value in property=value "
		    "'-C' argument (%s)\n", input);
		FUNC5(B_FALSE);
	}
	*(value) = '\0';
	value++;

	if (FUNC3(value, "on") == 0) {
		state = ZTEST_VDEV_CLASS_ON;
	} else if (FUNC3(value, "off") == 0) {
		state = ZTEST_VDEV_CLASS_OFF;
	} else if (FUNC3(value, "random") == 0) {
		state = ZTEST_VDEV_CLASS_RND;
	} else {
		(void) FUNC0(stderr, "invalid property value '%s'\n", value);
		FUNC5(B_FALSE);
	}

	if (FUNC3(name, "special") == 0) {
		zo->zo_special_vdevs = state;
	} else {
		(void) FUNC0(stderr, "invalid property name '%s'\n", name);
		FUNC5(B_FALSE);
	}
	if (zo->zo_verbose >= 3)
		(void) FUNC1("%s vdev state is '%s'\n", name, value);
}