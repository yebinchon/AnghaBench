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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int
FUNC3(FILE *fp)
{
	int err = 0;

	FUNC1(fp, "/*\n");
	FUNC1(fp, " * bhyve MCFG template\n");
	FUNC1(fp, " */\n");
	FUNC1(fp, "[0004]\t\tSignature : \"MCFG\"\n");
	FUNC1(fp, "[0004]\t\tTable Length : 00000000\n");
	FUNC1(fp, "[0001]\t\tRevision : 01\n");
	FUNC1(fp, "[0001]\t\tChecksum : 00\n");
	FUNC1(fp, "[0006]\t\tOem ID : \"BHYVE \"\n");
	FUNC1(fp, "[0008]\t\tOem Table ID : \"BVMCFG  \"\n");
	FUNC1(fp, "[0004]\t\tOem Revision : 00000001\n");

	/* iasl will fill in the compiler ID/revision fields */
	FUNC1(fp, "[0004]\t\tAsl Compiler ID : \"xxxx\"\n");
	FUNC1(fp, "[0004]\t\tAsl Compiler Revision : 00000000\n");
	FUNC1(fp, "[0008]\t\tReserved : 0\n");
	FUNC1(fp, "\n");

	FUNC1(fp, "[0008]\t\tBase Address : %016llx\n", FUNC2());
	FUNC1(fp, "[0002]\t\tSegment Group: 0000\n");
	FUNC1(fp, "[0001]\t\tStart Bus: 00\n");
	FUNC1(fp, "[0001]\t\tEnd Bus: FF\n");
	FUNC1(fp, "[0004]\t\tReserved : 0\n");
	FUNC0(fp);
	return (0);
err_exit:
	return (errno);
}