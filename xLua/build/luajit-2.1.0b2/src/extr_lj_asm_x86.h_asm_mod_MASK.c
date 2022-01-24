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
struct TYPE_4__ {int /*<<< orphan*/  t; } ;
typedef  TYPE_1__ IRIns ;
typedef  int /*<<< orphan*/  ASMState ;

/* Variables and functions */
 int /*<<< orphan*/  IRCALL_lj_carith_modi64 ; 
 int /*<<< orphan*/  IRCALL_lj_carith_modu64 ; 
 int /*<<< orphan*/  IRCALL_lj_vm_modi ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(ASMState *as, IRIns *ir)
{
#if LJ_64 && LJ_HASFFI
  if (!irt_isint(ir->t))
    asm_callid(as, ir, irt_isi64(ir->t) ? IRCALL_lj_carith_modi64 :
					  IRCALL_lj_carith_modu64);
  else
#endif
    FUNC0(as, ir, IRCALL_lj_vm_modi);
}