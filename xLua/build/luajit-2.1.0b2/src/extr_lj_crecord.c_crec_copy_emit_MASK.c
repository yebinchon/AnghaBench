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
typedef  int /*<<< orphan*/  jit_State ;
struct TYPE_3__ {scalar_t__ tp; void* trval; void* trofs; int /*<<< orphan*/  ofs; } ;
typedef  void* TRef ;
typedef  size_t MSize ;
typedef  TYPE_1__ CRecMemList ;

/* Variables and functions */
 size_t CREC_COPY_REGWIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ IRT_NUM ; 
 scalar_t__ IRT_PTR ; 
 int /*<<< orphan*/  IR_ADD ; 
 int /*<<< orphan*/  IR_XLOAD ; 
 int /*<<< orphan*/  IR_XSTORE ; 
 scalar_t__ LJ_SOFTFP ; 
 void* FUNC1 (int /*<<< orphan*/ ,void*,void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(jit_State *J, CRecMemList *ml, MSize mlp,
			   TRef trdst, TRef trsrc)
{
  MSize i, j, rwin = 0;
  for (i = 0, j = 0; i < mlp; ) {
    TRef trofs = FUNC2(J, ml[i].ofs);
    TRef trsptr = FUNC1(FUNC0(IR_ADD, IRT_PTR), trsrc, trofs);
    ml[i].trval = FUNC1(FUNC0(IR_XLOAD, ml[i].tp), trsptr, 0);
    ml[i].trofs = trofs;
    i++;
    rwin += (LJ_SOFTFP && ml[i].tp == IRT_NUM) ? 2 : 1;
    if (rwin >= CREC_COPY_REGWIN || i >= mlp) {  /* Flush buffered stores. */
      rwin = 0;
      for ( ; j < i; j++) {
	TRef trdptr = FUNC1(FUNC0(IR_ADD, IRT_PTR), trdst, ml[j].trofs);
	FUNC1(FUNC0(IR_XSTORE, ml[j].tp), trdptr, ml[j].trval);
      }
    }
  }
}