#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  device_extension ;
struct TYPE_5__ {int cache_loaded; } ;
typedef  TYPE_1__ chunk ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

NTSTATUS FUNC4(device_extension* Vcb, chunk* c, PIRP Irp) {
    NTSTATUS Status;

    if (c->cache_loaded)
        return STATUS_SUCCESS;

    Status = FUNC2(Vcb, c, Irp);
    if (!FUNC1(Status)) {
        FUNC0("load_free_space_cache returned %08x\n", Status);
        return Status;
    }

    FUNC3(c);

    c->cache_loaded = true;

    return STATUS_SUCCESS;
}