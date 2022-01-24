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
typedef  int /*<<< orphan*/  node_name ;
struct TYPE_3__ {int member_0; char* member_1; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_1__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int ACPI_POWER_RESOURCE_STATE_OFF ; 
 int ACPI_POWER_RESOURCE_STATE_ON ; 
 int /*<<< orphan*/  ACPI_SINGLE_NAME ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5 (
	ACPI_HANDLE handle,
	int *state)
{
	ACPI_STATUS		status = AE_OK;
	unsigned long long	sta = 0;
	char node_name[5];
	ACPI_BUFFER buffer = { sizeof(node_name), node_name };


	if (!handle || !state)
		FUNC4(-1);

	status = FUNC3(handle, "_STA", NULL, &sta);
	if (FUNC1(status))
		FUNC4(-15);

	*state = (sta & 0x01)?ACPI_POWER_RESOURCE_STATE_ON:
			      ACPI_POWER_RESOURCE_STATE_OFF;

	FUNC2(handle, ACPI_SINGLE_NAME, &buffer);

	FUNC0((ACPI_DB_INFO, "Resource [%s] is %s\n",
		node_name, *state?"on":"off"));

	return 0;
}