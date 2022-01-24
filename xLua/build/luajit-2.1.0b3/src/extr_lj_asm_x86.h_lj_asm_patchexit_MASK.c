#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  jit_State ;
typedef  int int32_t ;
struct TYPE_7__ {int /*<<< orphan*/  vmstate; } ;
struct TYPE_6__ {int /*<<< orphan*/  vmstate; } ;
struct TYPE_5__ {int* mcode; int szmcode; } ;
typedef  int MSize ;
typedef  int MCode ;
typedef  TYPE_1__ GCtrace ;
typedef  int /*<<< orphan*/  ExitNo ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ *) ; 
 int LJ_64 ; 
 int LJ_GC64 ; 
 int XI_JMP ; 
 int XI_MOVmi ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  dispatch ; 
 int* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__ g ; 
 int FUNC4 (int*,int*) ; 
 int* FUNC5 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(jit_State *J, GCtrace *T, ExitNo exitno, MCode *target)
{
  MCode *p = T->mcode;
  MCode *mcarea = FUNC5(J, p, 0);
  MSize len = T->szmcode;
  MCode *px = FUNC3(J, exitno) - 6;
  MCode *pe = p+len-6;
#if LJ_GC64
  uint32_t statei = (uint32_t)(GG_OFS(g.vmstate) - GG_OFS(dispatch));
#else
  uint32_t statei = FUNC8(&FUNC1(J)->vmstate);
#endif
  if (len > 5 && p[len-5] == XI_JMP && p+len-6 + *(int32_t *)(p+len-4) == px)
    *(int32_t *)(p+len-4) = FUNC4(p+len, target);
  /* Do not patch parent exit for a stack check. Skip beyond vmstate update. */
  for (; p < pe; p += FUNC2(p)) {
    intptr_t ofs = LJ_GC64 ? (p[0] & 0xf0) == 0x40 : LJ_64;
    if (*(uint32_t *)(p+2+ofs) == statei && p[ofs+LJ_GC64-LJ_64] == XI_MOVmi)
      break;
  }
  FUNC7(p < pe);
  for (; p < pe; p += FUNC2(p))
    if ((*(uint16_t *)p & 0xf0ff) == 0x800f && p + *(int32_t *)(p+2) == px)
      *(int32_t *)(p+2) = FUNC4(p+6, target);
  FUNC6(T->mcode, T->mcode + T->szmcode);
  FUNC5(J, mcarea, 1);
}