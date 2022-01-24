#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct acpi_handle_list {size_t count; scalar_t__* handles; } ;
typedef  size_t UINT32 ;
struct TYPE_9__ {scalar_t__ Length; scalar_t__ Pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_7__ {scalar_t__ Handle; } ;
struct TYPE_6__ {scalar_t__ Count; TYPE_3__* Elements; } ;
struct TYPE_8__ {scalar_t__ Type; TYPE_2__ Reference; int /*<<< orphan*/  type; TYPE_1__ Package; } ;
typedef  int /*<<< orphan*/  ACPI_STRING ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_OBJECT_LIST ;
typedef  TYPE_3__ ACPI_OBJECT ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_4__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 int /*<<< orphan*/  ACPI_DB_ERROR ; 
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ ACPI_MAX_HANDLES ; 
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ; 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  AE_BAD_DATA ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_NULL_ENTRY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC7 (
	ACPI_HANDLE		handle,
	ACPI_STRING		pathname,
	ACPI_OBJECT_LIST	*arguments,
	struct acpi_handle_list	*list)
{
	ACPI_STATUS		status = AE_OK;
	ACPI_OBJECT	*package = NULL;
	ACPI_OBJECT	*element = NULL;
	ACPI_BUFFER	buffer = {ACPI_ALLOCATE_BUFFER, NULL};
	UINT32			i = 0;

	FUNC2("acpi_evaluate_reference");

	if (!list) {
		FUNC6(AE_BAD_PARAMETER);
	}

	/* Evaluate object. */

	status = FUNC3(handle, pathname, arguments, &buffer);
	if (FUNC1(status))
		goto end;

	package = (ACPI_OBJECT *) buffer.Pointer;

	if ((buffer.Length == 0) || !package) {
		FUNC0((ACPI_DB_ERROR, 
			"No return object (len %X ptr %p)\n", 
			buffer.Length, package));
		status = AE_BAD_DATA;
		FUNC5(handle, pathname, status);
		goto end;
	}
	if (package->Type != ACPI_TYPE_PACKAGE) {
		FUNC0((ACPI_DB_ERROR, 
			"Expecting a [Package], found type %X\n", 
			package->Type));
		status = AE_BAD_DATA;
		FUNC5(handle, pathname, status);
		goto end;
	}
	if (!package->Package.Count) {
		FUNC0((ACPI_DB_ERROR, 
			"[Package] has zero elements (%p)\n", 
			package));
		status = AE_BAD_DATA;
		FUNC5(handle, pathname, status);
		goto end;
	}

	if (package->Package.Count > ACPI_MAX_HANDLES) {
		return AE_NO_MEMORY;
	}
	list->count = package->Package.Count;

	/* Extract package data. */

	for (i = 0; i < list->count; i++) {

		element = &(package->Package.Elements[i]);

		if (element->Type != ACPI_TYPE_LOCAL_REFERENCE) {
			status = AE_BAD_DATA;
			FUNC0((ACPI_DB_ERROR, 
				"Expecting a [Reference] package element, found type %X\n",
				element->type));
			FUNC5(handle, pathname, status);
			break;
		}
		
		if (!element->Reference.Handle) {
			FUNC0((ACPI_DB_ERROR, "Invalid reference in"
			       " package %s\n", pathname));
			status = AE_NULL_ENTRY;
			break;
		}
		/* Get the  ACPI_HANDLE. */

		list->handles[i] = element->Reference.Handle;
		FUNC0((ACPI_DB_INFO, "Found reference [%p]\n",
			list->handles[i]));
	}

end:
	if (FUNC1(status)) {
		list->count = 0;
		//ExFreePool(list->handles);
	}

    if (buffer.Pointer)
        FUNC4(buffer.Pointer);

	FUNC6(status);
}