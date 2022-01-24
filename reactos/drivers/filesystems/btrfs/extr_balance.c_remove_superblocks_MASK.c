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
typedef  int /*<<< orphan*/  superblock ;
struct TYPE_4__ {scalar_t__ num_bytes; } ;
struct TYPE_5__ {int /*<<< orphan*/  fileobj; int /*<<< orphan*/  devobj; TYPE_1__ devitem; } ;
typedef  TYPE_2__ device ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_TAG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PagedPool ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__* superblock_addrs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static NTSTATUS FUNC6(device* dev) {
    NTSTATUS Status;
    superblock* sb;
    int i = 0;

    sb = FUNC1(PagedPool, sizeof(superblock), ALLOC_TAG);
    if (!sb) {
        FUNC0("out of memory\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    FUNC4(sb, sizeof(superblock));

    while (superblock_addrs[i] > 0 && dev->devitem.num_bytes >= superblock_addrs[i] + sizeof(superblock)) {
        Status = FUNC5(dev->devobj, dev->fileobj, superblock_addrs[i], sb, sizeof(superblock));

        if (!FUNC3(Status)) {
            FUNC2(sb);
            return Status;
        }

        i++;
    }

    FUNC2(sb);

    return STATUS_SUCCESS;
}