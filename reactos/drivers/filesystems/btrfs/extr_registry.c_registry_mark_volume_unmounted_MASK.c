#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_6__ {int Length; int MaximumLength; char* Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  size_t ULONG ;
struct TYPE_8__ {int Length; int /*<<< orphan*/  Buffer; } ;
struct TYPE_7__ {int* uuid; } ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_2__ BTRFS_UUID ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_3__ registry_path ; 

NTSTATUS FUNC7(BTRFS_UUID* uuid) {
    UNICODE_STRING path;
    NTSTATUS Status;
    ULONG i, j;

    path.Length = path.MaximumLength = registry_path.Length + (37 * sizeof(WCHAR));
    path.Buffer = FUNC1(PagedPool, path.Length, ALLOC_TAG);

    if (!path.Buffer) {
        FUNC0("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    FUNC4(path.Buffer, registry_path.Buffer, registry_path.Length);
    i = registry_path.Length / sizeof(WCHAR);

    path.Buffer[i] = '\\';
    i++;

    for (j = 0; j < 16; j++) {
        path.Buffer[i] = FUNC5((uuid->uuid[j] & 0xF0) >> 4);
        path.Buffer[i+1] = FUNC5(uuid->uuid[j] & 0xF);

        i += 2;

        if (j == 3 || j == 5 || j == 7 || j == 9) {
            path.Buffer[i] = '-';
            i++;
        }
    }

    Status = FUNC6(&path);
    if (!FUNC3(Status)) {
        FUNC0("registry_mark_volume_unmounted_path returned %08x\n", Status);
        goto end;
    }

    Status = STATUS_SUCCESS;

end:
    FUNC2(path.Buffer);

    return Status;
}