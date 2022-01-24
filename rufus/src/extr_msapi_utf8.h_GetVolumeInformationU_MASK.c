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
typedef  int /*<<< orphan*/ * LPSTR ;
typedef  int /*<<< orphan*/  LPDWORD ;
typedef  int /*<<< orphan*/ * LPCSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wlpFileSystemNameBuffer ; 
 int /*<<< orphan*/  wlpRootPathName ; 
 int /*<<< orphan*/  wlpVolumeNameBuffer ; 

__attribute__((used)) static __inline BOOL FUNC7(LPCSTR lpRootPathName, LPSTR lpVolumeNameBuffer,
	DWORD nVolumeNameSize, LPDWORD lpVolumeSerialNumber, LPDWORD lpMaximumComponentLength,
	LPDWORD lpFileSystemFlags, LPSTR lpFileSystemNameBuffer, DWORD nFileSystemNameSize)
{
	BOOL ret = FALSE;
	DWORD err = ERROR_INVALID_DATA;
	FUNC5(lpRootPathName);
	// coverity[returned_null]
	FUNC3(lpVolumeNameBuffer, nVolumeNameSize);
	// coverity[returned_null]
	FUNC3(lpFileSystemNameBuffer, nFileSystemNameSize);

	ret = FUNC1(wlpRootPathName, wlpVolumeNameBuffer, nVolumeNameSize,
		lpVolumeSerialNumber, lpMaximumComponentLength, lpFileSystemFlags,
		wlpFileSystemNameBuffer, nFileSystemNameSize);
	err = FUNC0();
	if (ret) {
		if ( ((lpVolumeNameBuffer != NULL) && (FUNC4(wlpVolumeNameBuffer,
			lpVolumeNameBuffer, nVolumeNameSize) == 0))
		  || ((lpFileSystemNameBuffer != NULL) && (FUNC4(wlpFileSystemNameBuffer,
			lpFileSystemNameBuffer, nFileSystemNameSize) == 0)) ) {
			err = FUNC0();
			ret = FALSE;
		}
	}
	FUNC6(lpVolumeNameBuffer);
	FUNC6(lpFileSystemNameBuffer);
	FUNC6(lpRootPathName);
	FUNC2(err);
	return ret;
}