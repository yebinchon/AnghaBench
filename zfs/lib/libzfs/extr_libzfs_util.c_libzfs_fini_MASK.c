#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ libzfs_sharetab; scalar_t__ libzfs_mnttab; int /*<<< orphan*/  libzfs_fd; } ;
typedef  TYPE_1__ libzfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

void
FUNC10(libzfs_handle_t *hdl)
{
	(void) FUNC0(hdl->libzfs_fd);
	if (hdl->libzfs_mnttab)
#ifdef HAVE_SETMNTENT
		(void) endmntent(hdl->libzfs_mnttab);
#else
		(void) FUNC2(hdl->libzfs_mnttab);
#endif
	if (hdl->libzfs_sharetab)
		(void) FUNC2(hdl->libzfs_sharetab);
	FUNC8(hdl);
	FUNC9(hdl);
	FUNC7(hdl);
	FUNC6(hdl);
	FUNC5();
	FUNC3();
	FUNC4(hdl);
}