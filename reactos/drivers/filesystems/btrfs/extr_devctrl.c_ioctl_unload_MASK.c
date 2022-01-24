#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  RequestorMode; } ;
typedef  TYPE_1__* PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SE_LOAD_DRIVER_PRIVILEGE ; 
 int /*<<< orphan*/  STATUS_PRIVILEGE_NOT_HELD ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static NTSTATUS FUNC4(PIRP Irp) {
    if (!FUNC2(FUNC1(SE_LOAD_DRIVER_PRIVILEGE), Irp->RequestorMode)) {
        FUNC0("insufficient privileges\n");
        return STATUS_PRIVILEGE_NOT_HELD;
    }

    FUNC3(Irp);

    return STATUS_SUCCESS;
}