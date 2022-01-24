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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_5__ {int /*<<< orphan*/  HardwareEsp; int /*<<< orphan*/  HardwareSegSs; } ;
struct TYPE_4__ {TYPE_2__ Tf; } ;
typedef  int /*<<< orphan*/  PKTRAP_FRAME ;
typedef  TYPE_1__* PKDB_KTRAP_FRAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HardwareEsp ; 
 int /*<<< orphan*/  KTRAP_FRAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID
FUNC4(
    PKDB_KTRAP_FRAME KdbTrapFrame,
    PKTRAP_FRAME TrapFrame)
{
    /* Copy the TrapFrame only up to Eflags and zero the rest*/
    FUNC3(TrapFrame, &KdbTrapFrame->Tf, FUNC0(KTRAP_FRAME, HardwareEsp));

    /* FIXME: write cr0, cr2, cr3 and cr4 (not needed atm) */

    FUNC2(TrapFrame, KdbTrapFrame->Tf.HardwareSegSs);
    FUNC1(TrapFrame, KdbTrapFrame->Tf.HardwareEsp);

    /* FIXME: copy v86 registers if TrapFrame is a V86 trapframe */
}