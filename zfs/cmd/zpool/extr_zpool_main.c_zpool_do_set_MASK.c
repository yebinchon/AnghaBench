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
struct TYPE_3__ {char* cb_propname; char* cb_value; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ set_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int FUNC0 (int,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  set_callback ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(int argc, char **argv)
{
	set_cbdata_t cb = { 0 };
	int error;

	if (argc > 1 && argv[1][0] == '-') {
		(void) FUNC1(stderr, FUNC2("invalid option '%c'\n"),
		    argv[1][1]);
		FUNC4(B_FALSE);
	}

	if (argc < 2) {
		(void) FUNC1(stderr, "%s", FUNC2("missing property=value "
		    "argument\n"));
		FUNC4(B_FALSE);
	}

	if (argc < 3) {
		(void) FUNC1(stderr, "%s", FUNC2("missing pool name\n"));
		FUNC4(B_FALSE);
	}

	if (argc > 3) {
		(void) FUNC1(stderr, "%s", FUNC2("too many pool names\n"));
		FUNC4(B_FALSE);
	}

	cb.cb_propname = argv[1];
	cb.cb_value = FUNC3(cb.cb_propname, '=');
	if (cb.cb_value == NULL) {
		(void) FUNC1(stderr, "%s", FUNC2("missing value in "
		    "property=value argument\n"));
		FUNC4(B_FALSE);
	}

	*(cb.cb_value) = '\0';
	cb.cb_value++;

	error = FUNC0(argc - 2, argv + 2, B_TRUE, NULL,
	    set_callback, &cb);

	return (error);
}