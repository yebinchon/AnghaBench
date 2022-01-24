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
typedef  void* uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  device_extension ;
struct TYPE_3__ {int /*<<< orphan*/  count; void* offset; void* objid; void* root; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_1__ EXTENT_DATA_REF ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_EXTENT_DATA_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,void*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC1(device_extension* Vcb, uint64_t address, uint64_t size, uint64_t root, uint64_t inode, uint64_t offset, uint32_t refcount, PIRP Irp) {
    EXTENT_DATA_REF edr;

    edr.root = root;
    edr.objid = inode;
    edr.offset = offset;
    edr.count = refcount;

    return FUNC0(Vcb, address, size, TYPE_EXTENT_DATA_REF, &edr, NULL, 0, Irp);
}