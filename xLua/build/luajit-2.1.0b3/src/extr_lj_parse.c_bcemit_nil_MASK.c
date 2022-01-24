#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int pc; int lasttarget; TYPE_1__* bcbase; } ;
struct TYPE_5__ {int /*<<< orphan*/  ins; } ;
typedef  TYPE_2__ FuncState ;
typedef  int BCReg ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const,int,int) ; 
#define  BC_KNIL 129 
#define  BC_KPRI 128 
 int LJ_TNIL ; 
 int VKNIL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(FuncState *fs, BCReg from, BCReg n)
{
  if (fs->pc > fs->lasttarget) {  /* No jumps to current position? */
    BCIns *ip = &fs->bcbase[fs->pc-1].ins;
    BCReg pto, pfrom = FUNC1(*ip);
    switch (FUNC3(*ip)) {  /* Try to merge with the previous instruction. */
    case BC_KPRI:
      if (FUNC2(*ip) != ~LJ_TNIL) break;
      if (from == pfrom) {
	if (n == 1) return;
      } else if (from == pfrom+1) {
	from = pfrom;
	n++;
      } else {
	break;
      }
      *ip = FUNC0(BC_KNIL, from, from+n-1);  /* Replace KPRI. */
      return;
    case BC_KNIL:
      pto = FUNC2(*ip);
      if (pfrom <= from && from <= pto+1) {  /* Can we connect both ranges? */
	if (from+n-1 > pto)
	  FUNC5(ip, from+n-1);  /* Patch previous instruction range. */
	return;
      }
      break;
    default:
      break;
    }
  }
  /* Emit new instruction or replace old instruction. */
  FUNC4(fs, n == 1 ? FUNC0(BC_KPRI, from, VKNIL) :
			  FUNC0(BC_KNIL, from, from+n-1));
}