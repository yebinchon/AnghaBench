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
typedef  int /*<<< orphan*/  PSP_DEVINFO_DATA ;
typedef  int /*<<< orphan*/  PDWORD ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  HDEVINFO ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ wPropertyBuffer ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static __inline BOOL FUNC6(HDEVINFO DeviceInfoSet, PSP_DEVINFO_DATA DeviceInfoData,
	DWORD Property, PDWORD PropertyRegDataType, PBYTE PropertyBuffer, DWORD PropertyBufferSize, PDWORD RequiredSize)
{
	BOOL ret = FALSE;
	DWORD err = ERROR_INVALID_DATA;
	// coverity[returned_null]
	FUNC3(PropertyBuffer, PropertyBufferSize);

	ret = FUNC2(DeviceInfoSet, DeviceInfoData, Property,
		PropertyRegDataType, (PBYTE)wPropertyBuffer, PropertyBufferSize, RequiredSize);
	err = FUNC0();
	if ((ret != 0) && (FUNC4(wPropertyBuffer,
		(char*)(uintptr_t)PropertyBuffer, PropertyBufferSize) == 0)) {
		err = FUNC0();
		ret = FALSE;
	}
	FUNC5(PropertyBuffer);
	FUNC1(err);
	return ret;
}