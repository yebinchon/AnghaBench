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
struct TYPE_3__ {scalar_t__ Gpr1; } ;
typedef  TYPE_1__* PKTRAP_FRAME ;
typedef  int /*<<< orphan*/  LONG ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ KernelMode ; 

__attribute__((used)) static LONG
FUNC1(PKTRAP_FRAME TrapFrame)
{
  return FUNC0() == KernelMode
         ? (LONG) &TrapFrame->Gpr1 : (LONG)TrapFrame->Gpr1;
}