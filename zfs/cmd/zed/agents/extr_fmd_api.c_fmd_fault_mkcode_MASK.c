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

/* Variables and functions */
 int /*<<< orphan*/  FM_CLASS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static const char *
FUNC2(nvlist_t *fault)
{
	char *class, *code = "-";

	/*
	 * Note: message codes come from: openzfs/usr/src/cmd/fm/dicts/ZFS.po
	 */
	if (FUNC0(fault, FM_CLASS, &class) == 0) {
		if (FUNC1(class, "fault.fs.zfs.vdev.io") == 0)
			code = "ZFS-8000-FD";
		else if (FUNC1(class, "fault.fs.zfs.vdev.checksum") == 0)
			code = "ZFS-8000-GH";
		else if (FUNC1(class, "fault.fs.zfs.io_failure_wait") == 0)
			code = "ZFS-8000-HC";
		else if (FUNC1(class, "fault.fs.zfs.io_failure_continue") == 0)
			code = "ZFS-8000-JQ";
		else if (FUNC1(class, "fault.fs.zfs.log_replay") == 0)
			code = "ZFS-8000-K4";
		else if (FUNC1(class, "fault.fs.zfs.pool") == 0)
			code = "ZFS-8000-CS";
		else if (FUNC1(class, "fault.fs.zfs.device") == 0)
			code = "ZFS-8000-D3";

	}
	return (code);
}