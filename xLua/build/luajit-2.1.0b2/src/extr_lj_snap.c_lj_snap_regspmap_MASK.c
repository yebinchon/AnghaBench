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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_13__ {TYPE_1__* ir; int /*<<< orphan*/ * snapmap; TYPE_2__* snap; } ;
struct TYPE_12__ {scalar_t__ o; int op2; scalar_t__ op1; scalar_t__ prev; } ;
struct TYPE_11__ {size_t mapofs; size_t nent; } ;
struct TYPE_10__ {scalar_t__ prev; } ;
typedef  TYPE_2__ SnapShot ;
typedef  size_t SnapNo ;
typedef  int /*<<< orphan*/  SnapEntry ;
typedef  size_t MSize ;
typedef  size_t IRRef ;
typedef  TYPE_3__ IRIns ;
typedef  TYPE_4__ GCtrace ;
typedef  int /*<<< orphan*/  BloomFilter ;

/* Variables and functions */
 int IRSLOAD_PARENT ; 
 scalar_t__ IR_HIOP ; 
 scalar_t__ IR_PVAL ; 
 scalar_t__ IR_SLOAD ; 
 scalar_t__ LJ_SOFTFP ; 
 size_t REF_BIAS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,size_t) ; 
 scalar_t__ FUNC5 (TYPE_4__*,size_t,size_t,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

IRIns *FUNC7(GCtrace *T, SnapNo snapno, IRIns *ir)
{
  SnapShot *snap = &T->snap[snapno];
  SnapEntry *map = &T->snapmap[snap->mapofs];
  BloomFilter rfilt = FUNC4(T, snapno);
  MSize n = 0;
  IRRef ref = 0;
  for ( ; ; ir++) {
    uint32_t rs;
    if (ir->o == IR_SLOAD) {
      if (!(ir->op2 & IRSLOAD_PARENT)) break;
      for ( ; ; n++) {
	FUNC1(n < snap->nent);
	if (FUNC6(map[n]) == ir->op1) {
	  ref = FUNC3(map[n++]);
	  break;
	}
      }
    } else if (LJ_SOFTFP && ir->o == IR_HIOP) {
      ref++;
    } else if (ir->o == IR_PVAL) {
      ref = ir->op1 + REF_BIAS;
    } else {
      break;
    }
    rs = T->ir[ref].prev;
    if (FUNC0(rfilt, ref))
      rs = FUNC5(T, snapno, ref, rs);
    ir->prev = (uint16_t)rs;
    FUNC1(FUNC2(rs));
  }
  return ir;
}