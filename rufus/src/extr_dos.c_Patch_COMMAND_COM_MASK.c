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
typedef  int /*<<< orphan*/  expected ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int* DiskImage ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static BOOL FUNC2(size_t filestart, size_t filesize)
{
	const BYTE expected[8] = { 0x15, 0x80, 0xFA, 0x03, 0x75, 0x10, 0xB8, 0x0E };

	FUNC1("Patching COMMAND.COM...\n");
	if (filesize != 93040) {
		FUNC1("  unexpected file size\n");
		return FALSE;
	}
	if (FUNC0(&DiskImage[filestart+0x650c], expected, sizeof(expected)) != 0) {
		FUNC1("  unexpected binary data\n");
		return FALSE;
	}
	DiskImage[filestart+0x6510] = 0xeb;
	return TRUE;
}