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
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {void* UserBuffer; int /*<<< orphan*/  MdlAddress; } ;
typedef  TYPE_1__* PIRP ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void* FUNC1(PIRP Irp, ULONG priority) {
    if (!Irp->MdlAddress) {
        return Irp->UserBuffer;
    } else {
        return FUNC0(Irp->MdlAddress, priority);
    }
}