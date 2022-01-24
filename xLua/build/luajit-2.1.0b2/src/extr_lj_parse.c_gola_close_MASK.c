#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {size_t startpc; int /*<<< orphan*/  slot; } ;
typedef  TYPE_2__ VarInfo ;
struct TYPE_13__ {TYPE_1__* bcbase; } ;
struct TYPE_12__ {TYPE_4__* fs; } ;
struct TYPE_10__ {int /*<<< orphan*/  ins; } ;
typedef  TYPE_3__ LexState ;
typedef  TYPE_4__ FuncState ;
typedef  size_t BCPos ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 scalar_t__ BC_JMP ; 
 scalar_t__ BC_UCLO ; 
 size_t NO_JMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 size_t FUNC2 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC8(LexState *ls, VarInfo *vg)
{
  FuncState *fs = ls->fs;
  BCPos pc = vg->startpc;
  BCIns *ip = &fs->bcbase[pc].ins;
  FUNC4(FUNC1(vg));
  FUNC4(FUNC0(*ip) == BC_JMP || FUNC0(*ip) == BC_UCLO);
  FUNC5(ip, vg->slot);
  if (FUNC0(*ip) == BC_JMP) {
    BCPos next = FUNC2(fs, pc);
    if (next != NO_JMP) FUNC3(fs, next, pc);  /* Jump to UCLO. */
    FUNC7(ip, BC_UCLO);  /* Turn into UCLO. */
    FUNC6(ip, NO_JMP);
  }
}