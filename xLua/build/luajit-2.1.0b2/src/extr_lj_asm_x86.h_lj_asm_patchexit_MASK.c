#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  jit_State ;
typedef  int int32_t ;
struct TYPE_5__ {int /*<<< orphan*/  vmstate; } ;
struct TYPE_4__ {int szmcode; scalar_t__* mcode; } ;
typedef  int MSize ;
typedef  scalar_t__ MCode ;
typedef  TYPE_1__ GCtrace ;
typedef  int /*<<< orphan*/  ExitNo ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ LJ_64 ; 
 scalar_t__ XI_JMP ; 
 scalar_t__ XI_MOVmi ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__*,scalar_t__*) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(jit_State *J, GCtrace *T, ExitNo exitno, MCode *target)
{
  MCode *p = T->mcode;
  MCode *mcarea = FUNC3(J, p, 0);
  MSize len = T->szmcode;
  MCode *px = FUNC1(J, exitno) - 6;
  MCode *pe = p+len-6;
  uint32_t stateaddr = FUNC6(&FUNC0(J)->vmstate);
  if (len > 5 && p[len-5] == XI_JMP && p+len-6 + *(int32_t *)(p+len-4) == px)
    *(int32_t *)(p+len-4) = FUNC2(p+len, target);
  /* Do not patch parent exit for a stack check. Skip beyond vmstate update. */
  for (; p < pe; p++)
    if (*(uint32_t *)(p+(LJ_64 ? 3 : 2)) == stateaddr && p[0] == XI_MOVmi) {
      p += LJ_64 ? 11 : 10;
      break;
    }
  FUNC5(p < pe);
  for (; p < pe; p++) {
    if ((*(uint16_t *)p & 0xf0ff) == 0x800f && p + *(int32_t *)(p+2) == px) {
      *(int32_t *)(p+2) = FUNC2(p+6, target);
      p += 5;
    }
  }
  FUNC4(T->mcode, T->mcode + T->szmcode);
  FUNC3(J, mcarea, 1);
}