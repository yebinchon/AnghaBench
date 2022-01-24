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
struct assembly_identity {int dummy; } ;
struct actctx_loader {int dummy; } ;
typedef  int ULONG ;
struct TYPE_3__ {int /*<<< orphan*/  Size; } ;
typedef  void* PVOID ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IMAGE_RESOURCE_DIRECTORY ;
typedef  TYPE_1__ IMAGE_RESOURCE_DATA_ENTRY ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  IMAGE_DIRECTORY_ENTRY_RESOURCE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,void**,int /*<<< orphan*/ *) ; 
 scalar_t__ RT_MANIFEST ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ STATUS_RESOURCE_DATA_NOT_FOUND ; 
 scalar_t__ STATUS_RESOURCE_TYPE_NOT_FOUND ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,void*,int) ; 
 scalar_t__ FUNC5 (struct actctx_loader*,struct assembly_identity*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static NTSTATUS FUNC6( struct actctx_loader* acl, struct assembly_identity* ai,
                                       LPCWSTR filename, LPCWSTR directory, BOOL shared,
                                       HANDLE hModule, ULONG lang )
{
    ULONG size;
    PVOID root, ptr;
    IMAGE_RESOURCE_DIRECTORY *resdirptr;
    IMAGE_RESOURCE_DATA_ENTRY *entry;
    NTSTATUS status;

    root = FUNC1(hModule, TRUE, IMAGE_DIRECTORY_ENTRY_RESOURCE, &size);
    if (!root) return STATUS_RESOURCE_DATA_NOT_FOUND;
    if (size < sizeof(*resdirptr)) return STATUS_RESOURCE_DATA_NOT_FOUND;
    resdirptr = root;

    if (!(ptr = FUNC2(resdirptr, (LPCWSTR)RT_MANIFEST, root, 1)))
        return STATUS_RESOURCE_TYPE_NOT_FOUND;

    resdirptr = ptr;
    if (!(ptr = FUNC4(resdirptr, root, 1)))
        return STATUS_RESOURCE_TYPE_NOT_FOUND;

    resdirptr = ptr;
    if (!(ptr = FUNC3(resdirptr, root, 0)))
        return STATUS_RESOURCE_TYPE_NOT_FOUND;

    entry = ptr;
    status = FUNC0(hModule, entry, &ptr, NULL);

    if (status == STATUS_SUCCESS)
        status = FUNC5(acl, ai, filename, directory, shared, ptr, entry->Size);

    return status;
}