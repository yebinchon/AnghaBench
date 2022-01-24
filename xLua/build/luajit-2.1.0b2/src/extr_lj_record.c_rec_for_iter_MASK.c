#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ lua_Number ;
typedef  int /*<<< orphan*/  cTValue ;
typedef  int /*<<< orphan*/  LoopEvent ;
typedef  int /*<<< orphan*/  IROp ;

/* Variables and functions */
 size_t FORL_IDX ; 
 size_t FORL_STEP ; 
 size_t FORL_STOP ; 
 int /*<<< orphan*/  IR_GE ; 
 int /*<<< orphan*/  IR_GT ; 
 int /*<<< orphan*/  IR_LE ; 
 int /*<<< orphan*/  IR_LT ; 
 int /*<<< orphan*/  LOOPEV_ENTER ; 
 int /*<<< orphan*/  LOOPEV_ENTERLO ; 
 int /*<<< orphan*/  LOOPEV_LEAVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static LoopEvent FUNC2(IROp *op, cTValue *o, int isforl)
{
  lua_Number stopv = FUNC0(&o[FORL_STOP]);
  lua_Number idxv = FUNC0(&o[FORL_IDX]);
  lua_Number stepv = FUNC0(&o[FORL_STEP]);
  if (isforl)
    idxv += stepv;
  if (FUNC1(&o[FORL_STEP])) {
    if (idxv <= stopv) {
      *op = IR_LE;
      return idxv + 2*stepv > stopv ? LOOPEV_ENTERLO : LOOPEV_ENTER;
    }
    *op = IR_GT; return LOOPEV_LEAVE;
  } else {
    if (stopv <= idxv) {
      *op = IR_GE;
      return idxv + 2*stepv < stopv ? LOOPEV_ENTERLO : LOOPEV_ENTER;
    }
    *op = IR_LT; return LOOPEV_LEAVE;
  }
}