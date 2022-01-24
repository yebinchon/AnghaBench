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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/  LDN; int /*<<< orphan*/  CSN; } ;
typedef  TYPE_1__* PISAPNP_LOGICAL_DEVICE ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

VOID
FUNC6(PISAPNP_LOGICAL_DEVICE IsaDevice,
                 BOOLEAN Activate)
{
  FUNC4();
  FUNC3();
  FUNC5(IsaDevice->CSN);

  if (Activate)
    FUNC0(IsaDevice->LDN);
  else
    FUNC1(IsaDevice->LDN);

  FUNC2();

  FUNC4();
}