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
struct TYPE_3__ {long Information; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  TYPE_1__ IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  long DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

long FUNC3(HANDLE hFile, LPVOID lpBuffer, long lBytes)
{
	DWORD	NumberOfBytesRead;
	IO_STATUS_BLOCK  iosb;

	FUNC0( lpBuffer );

	if (!FUNC1(FUNC2(
		hFile,
		NULL, NULL, NULL, &iosb,
		lpBuffer,
		(DWORD) lBytes,
		NULL,
		NULL
		)))
	{
		return -1;
	}
	NumberOfBytesRead = iosb.Information;
	return NumberOfBytesRead;
}