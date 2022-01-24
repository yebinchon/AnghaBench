#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int ir; } ;
struct TYPE_8__ {TYPE_1__ cur; } ;
typedef  TYPE_2__ jit_State ;
struct TYPE_9__ {scalar_t__ op2; scalar_t__ o; } ;
typedef  scalar_t__ IRRef ;
typedef  TYPE_3__ IRIns ;
typedef  int /*<<< orphan*/  AliasRet ;

/* Variables and functions */
 int /*<<< orphan*/  ALIAS_MAY ; 
 int /*<<< orphan*/  ALIAS_NO ; 
 scalar_t__ IR_ASTORE ; 
 scalar_t__ IR_FSTORE ; 
 scalar_t__ IR_HSTORE ; 
 scalar_t__ IR_USTORE ; 

__attribute__((used)) static AliasRet FUNC0(jit_State *J, IRIns *ir, IRIns *stop)
{
  IRRef ref = (IRRef)(ir - J->cur.ir);  /* The ref that might be stored. */
  for (ir++; ir < stop; ir++)
    if (ir->op2 == ref &&
	(ir->o == IR_ASTORE || ir->o == IR_HSTORE ||
	 ir->o == IR_USTORE || ir->o == IR_FSTORE))
      return ALIAS_MAY;  /* Reference was stored and might alias. */
  return ALIAS_NO;  /* Reference was not stored. */
}