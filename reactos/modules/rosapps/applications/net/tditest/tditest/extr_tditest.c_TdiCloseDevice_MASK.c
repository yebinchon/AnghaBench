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
typedef  scalar_t__ PFILE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

NTSTATUS FUNC2(
    HANDLE Handle,
    PFILE_OBJECT FileObject)
{
	if (FileObject)
		FUNC0(FileObject);

	if (Handle)
		FUNC1(Handle);

	return STATUS_SUCCESS;
}