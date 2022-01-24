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
typedef  int /*<<< orphan*/  enable ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  IOCTL_MOUNTMGR_SET_AUTO_MOUNT ; 
 int /*<<< orphan*/  MOUNTMGR_DOS_DEVICE_NAME ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 

BOOL FUNC3(BOOL enable)
{
	HANDLE hMountMgr;
	DWORD size;
	BOOL ret = FALSE;

	hMountMgr = FUNC1(MOUNTMGR_DOS_DEVICE_NAME, GENERIC_READ|GENERIC_WRITE,
		FILE_SHARE_READ|FILE_SHARE_WRITE, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
	if (hMountMgr == NULL)
		return FALSE;
	ret = FUNC2(hMountMgr, IOCTL_MOUNTMGR_SET_AUTO_MOUNT, &enable, sizeof(enable), NULL, 0, &size, NULL);
	FUNC0(hMountMgr);
	return ret;
}