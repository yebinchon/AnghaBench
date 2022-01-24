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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int errno ; 

__attribute__((used)) static int
FUNC2(FILE *fp)
{
	int err;

	err = 0;

	FUNC1(fp, "/*\n");
	FUNC1(fp, " * bhyve FACS template\n");
	FUNC1(fp, " */\n");
	FUNC1(fp, "[0004]\t\tSignature : \"FACS\"\n");
	FUNC1(fp, "[0004]\t\tLength : 00000040\n");
	FUNC1(fp, "[0004]\t\tHardware Signature : 00000000\n");
	FUNC1(fp, "[0004]\t\t32 Firmware Waking Vector : 00000000\n");
	FUNC1(fp, "[0004]\t\tGlobal Lock : 00000000\n");
	FUNC1(fp, "[0004]\t\tFlags (decoded below) : 00000000\n");
	FUNC1(fp, "\t\t\tS4BIOS Support Present : 0\n");
	FUNC1(fp, "\t\t\t64-bit Wake Supported (V2) : 0\n");
	FUNC1(fp,
	    "[0008]\t\t64 Firmware Waking Vector : 0000000000000000\n");
	FUNC1(fp, "[0001]\t\tVersion : 02\n");
	FUNC1(fp, "[0003]\t\tReserved : 000000\n");
	FUNC1(fp, "[0004]\t\tOspmFlags (decoded below) : 00000000\n");
	FUNC1(fp, "\t\t\t64-bit Wake Env Required (V2) : 0\n");

	FUNC0(fp);

	return (0);

err_exit:
	return (errno);
}