#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_7__ {size_t jpc; size_t pc; size_t lasttarget; int /*<<< orphan*/  freereg; TYPE_1__* bcbase; } ;
struct TYPE_6__ {int /*<<< orphan*/  ins; } ;
typedef  TYPE_2__ FuncState ;
typedef  size_t BCPos ;
typedef  int /*<<< orphan*/  BCIns ;

/* Variables and functions */
 int /*<<< orphan*/  BC_JMP ; 
 scalar_t__ BC_UCLO ; 
 size_t NO_JMP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static BCPos FUNC4(FuncState *fs)
{
  BCPos jpc = fs->jpc;
  BCPos j = fs->pc - 1;
  BCIns *ip = &fs->bcbase[j].ins;
  fs->jpc = NO_JMP;
  if ((int32_t)j >= (int32_t)fs->lasttarget && FUNC0(*ip) == BC_UCLO) {
    FUNC3(ip, NO_JMP);
    fs->lasttarget = j+1;
  } else {
    j = FUNC1(fs, BC_JMP, fs->freereg, NO_JMP);
  }
  FUNC2(fs, &j, jpc);
  return j;
}