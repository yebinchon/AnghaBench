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
 scalar_t__ dsdt_error ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/ * dsdt_fp ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ dsdt_indent_level ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(FILE *fp)
{
	int err;

	err = 0;
	dsdt_fp = fp;
	dsdt_error = 0;
	dsdt_indent_level = 0;

	FUNC3("/*");
	FUNC3(" * bhyve DSDT template");
	FUNC3(" */");
	FUNC3("DefinitionBlock (\"bhyve_dsdt.aml\", \"DSDT\", 2,"
		 "\"BHYVE \", \"BVDSDT  \", 0x00000001)");
	FUNC3("{");
	FUNC3("  Name (_S5, Package ()");
	FUNC3("  {");
	FUNC3("      0x05,");
	FUNC3("      Zero,");
	FUNC3("  })");

	FUNC5();

	FUNC3("");
	FUNC3("  Scope (_SB.PC00)");
	FUNC3("  {");
	FUNC3("    Device (HPET)");
	FUNC3("    {");
	FUNC3("      Name (_HID, EISAID(\"PNP0103\"))");
	FUNC3("      Name (_UID, 0)");
	FUNC3("      Name (_CRS, ResourceTemplate ()");
	FUNC3("      {");
	FUNC2(4);
	FUNC1(0xFED00000, 0x400);
	FUNC4(4);
	FUNC3("      })");
	FUNC3("    }");
	FUNC3("  }");
	FUNC3("}");

	if (dsdt_error != 0)
		return (dsdt_error);

	FUNC0(fp);

	return (0);

err_exit:
	return (errno);
}