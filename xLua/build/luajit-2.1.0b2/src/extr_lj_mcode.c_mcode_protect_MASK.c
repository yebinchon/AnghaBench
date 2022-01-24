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
struct TYPE_4__ {int mcprot; int /*<<< orphan*/  szmcarea; int /*<<< orphan*/  mcarea; } ;
typedef  TYPE_1__ jit_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(jit_State *J, int prot)
{
  if (J->mcprot != prot) {
    if (FUNC0(FUNC2(J->mcarea, J->szmcarea, prot)))
      FUNC1(J);
    J->mcprot = prot;
  }
}