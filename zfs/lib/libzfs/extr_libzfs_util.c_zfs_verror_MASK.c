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
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_4__ {char* libzfs_action; int libzfs_error; char* libzfs_desc; scalar_t__ libzfs_printerr; scalar_t__ libzfs_desc_active; } ;
typedef  TYPE_1__ libzfs_handle_t ;

/* Variables and functions */
 int EZFS_NOMEM ; 
 int EZFS_UNKNOWN ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(libzfs_handle_t *hdl, int error, const char *fmt, va_list ap)
{
	(void) FUNC5(hdl->libzfs_action, sizeof (hdl->libzfs_action),
	    fmt, ap);
	hdl->libzfs_error = error;

	if (hdl->libzfs_desc_active)
		hdl->libzfs_desc_active = 0;
	else
		hdl->libzfs_desc[0] = '\0';

	if (hdl->libzfs_printerr) {
		if (error == EZFS_UNKNOWN) {
			(void) FUNC3(stderr, FUNC1(TEXT_DOMAIN, "internal "
			    "error: %s\n"), FUNC4(hdl));
			FUNC0();
		}

		(void) FUNC3(stderr, "%s: %s\n", hdl->libzfs_action,
		    FUNC4(hdl));
		if (error == EZFS_NOMEM)
			FUNC2(1);
	}
}