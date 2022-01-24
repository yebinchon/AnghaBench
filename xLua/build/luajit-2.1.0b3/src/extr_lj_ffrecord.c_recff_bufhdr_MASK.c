#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jit_State ;
struct TYPE_2__ {int /*<<< orphan*/  tmpbuf; } ;
typedef  int /*<<< orphan*/  TRef ;

/* Variables and functions */
 int /*<<< orphan*/  IRBUFHDR_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRT_PGC ; 
 int /*<<< orphan*/  IR_BUFHDR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static TRef FUNC4(jit_State *J)
{
  return FUNC2(FUNC0(IR_BUFHDR, IRT_PGC),
		FUNC3(J, &FUNC1(J)->tmpbuf), IRBUFHDR_RESET);
}