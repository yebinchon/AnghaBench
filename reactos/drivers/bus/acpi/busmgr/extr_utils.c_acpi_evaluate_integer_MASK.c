#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int member_0; TYPE_2__* member_1; } ;
struct TYPE_5__ {unsigned long long Value; } ;
struct TYPE_6__ {scalar_t__ Type; TYPE_1__ Integer; } ;
typedef  int /*<<< orphan*/  ACPI_STRING ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OBJECT_LIST ;
typedef  TYPE_2__ ACPI_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_3__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  AE_BAD_DATA ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC6 (
	ACPI_HANDLE		handle,
	ACPI_STRING		pathname,
	ACPI_OBJECT_LIST	*arguments,
	unsigned long long		*data)
{
	ACPI_STATUS             status = AE_OK;
	ACPI_OBJECT	element;
	ACPI_BUFFER	buffer = {sizeof(ACPI_OBJECT), &element};

	FUNC2("acpi_evaluate_integer");

	if (!data)
		FUNC5(AE_BAD_PARAMETER);

	status = FUNC3(handle, pathname, arguments, &buffer);
	if (FUNC1(status)) {
		FUNC4(handle, pathname, status);
		FUNC5(status);
	}

	if (element.Type != ACPI_TYPE_INTEGER) {
		FUNC4(handle, pathname, AE_BAD_DATA);
		FUNC5(AE_BAD_DATA);
	}

	*data = element.Integer.Value;

	FUNC0((ACPI_DB_INFO, "Return value [%lu]\n", *data));

	FUNC5(AE_OK);
}