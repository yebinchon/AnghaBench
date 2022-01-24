#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  uuid; } ;
struct TYPE_5__ {TYPE_1__ superblock; } ;
typedef  TYPE_2__ device_extension ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  BTRFS_UUID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  STATUS_BUFFER_OVERFLOW ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

__attribute__((used)) static NTSTATUS FUNC1(device_extension* Vcb, void* data, ULONG length) {
    if (length < sizeof(BTRFS_UUID))
        return STATUS_BUFFER_OVERFLOW;

    FUNC0(data, &Vcb->superblock.uuid, sizeof(BTRFS_UUID));

    return STATUS_SUCCESS;
}