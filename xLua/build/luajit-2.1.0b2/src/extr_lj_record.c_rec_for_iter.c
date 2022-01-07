
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ lua_Number ;
typedef int cTValue ;
typedef int LoopEvent ;
typedef int IROp ;


 size_t FORL_IDX ;
 size_t FORL_STEP ;
 size_t FORL_STOP ;
 int IR_GE ;
 int IR_GT ;
 int IR_LE ;
 int IR_LT ;
 int LOOPEV_ENTER ;
 int LOOPEV_ENTERLO ;
 int LOOPEV_LEAVE ;
 scalar_t__ numberVnum (int *) ;
 scalar_t__ rec_for_direction (int *) ;

__attribute__((used)) static LoopEvent rec_for_iter(IROp *op, cTValue *o, int isforl)
{
  lua_Number stopv = numberVnum(&o[FORL_STOP]);
  lua_Number idxv = numberVnum(&o[FORL_IDX]);
  lua_Number stepv = numberVnum(&o[FORL_STEP]);
  if (isforl)
    idxv += stepv;
  if (rec_for_direction(&o[FORL_STEP])) {
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
