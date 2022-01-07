
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ framesize; } ;
typedef TYPE_1__ GCproto ;
typedef scalar_t__ BCReg ;
typedef int BCIns ;






 int BC_UCLO ;
 scalar_t__ LJ_FR2 ;
 scalar_t__ bc_a (int ) ;
 scalar_t__ bc_c (int ) ;
 scalar_t__ bc_d (int ) ;
 size_t bc_j (int ) ;
 int bc_op (int ) ;

__attribute__((used)) static BCReg cur_topslot(GCproto *pt, const BCIns *pc, uint32_t nres)
{
  BCIns ins = pc[-1];
  if (bc_op(ins) == BC_UCLO)
    ins = pc[bc_j(ins)];
  switch (bc_op(ins)) {
  case 131: case 130: return bc_a(ins) + bc_c(ins) + nres-1+1+LJ_FR2;
  case 129: return bc_a(ins) + bc_d(ins) + nres-1;
  case 128: return bc_a(ins) + nres-1;
  default: return pt->framesize;
  }
}
