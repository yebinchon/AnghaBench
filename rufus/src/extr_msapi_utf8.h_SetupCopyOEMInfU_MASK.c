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
typedef  int /*<<< orphan*/ * PTSTR ;
typedef  int /*<<< orphan*/  PDWORD ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wDestinationInfFileName ; 
 int /*<<< orphan*/  wOEMSourceMediaLocation ; 
 int /*<<< orphan*/  wSourceInfFileName ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static __inline BOOL FUNC7(const char* SourceInfFileName, const char* OEMSourceMediaLocation, DWORD OEMSourceMediaType,
									  DWORD CopyStyle, char* DestinationInfFileName, DWORD DestinationInfFileNameSize,
									  PDWORD RequiredSize, PTSTR DestinationInfFileNameComponent)
{
	BOOL ret = FALSE;
	DWORD err = ERROR_INVALID_DATA;
	FUNC5(SourceInfFileName);
	FUNC5(OEMSourceMediaLocation);
	// coverity[returned_null]
	FUNC3(DestinationInfFileName, DestinationInfFileNameSize);

	// DestinationInfFileNameComponent is not supported
	if (DestinationInfFileNameComponent != NULL) goto out;

	ret = FUNC2(wSourceInfFileName, wOEMSourceMediaLocation, OEMSourceMediaType, CopyStyle,
		wDestinationInfFileName, DestinationInfFileNameSize, RequiredSize, NULL);
	err = FUNC0();
	if ((ret != FALSE) && ((ret = FUNC4(wDestinationInfFileName, DestinationInfFileName, DestinationInfFileNameSize)) == 0)) {
		err = FUNC0();
	}
out:
	FUNC6(SourceInfFileName);
	FUNC6(OEMSourceMediaLocation);
	FUNC6(DestinationInfFileName);
	FUNC1(err);
	return ret;
}