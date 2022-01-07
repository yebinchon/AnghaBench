
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int i; } ;
struct TYPE_9__ {TYPE_2__ p4; int p4type; } ;
typedef TYPE_3__ VdbeOp ;
struct TYPE_10__ {TYPE_3__* aOp; TYPE_1__* db; } ;
typedef TYPE_4__ Vdbe ;
struct TYPE_7__ {scalar_t__ mallocFailed; } ;


 int P4_INT32 ;
 int sqlite3VdbeAddOp3 (TYPE_4__*,int,int,int,int) ;

int sqlite3VdbeAddOp4Int(
  Vdbe *p,
  int op,
  int p1,
  int p2,
  int p3,
  int p4
){
  int addr = sqlite3VdbeAddOp3(p, op, p1, p2, p3);
  if( p->db->mallocFailed==0 ){
    VdbeOp *pOp = &p->aOp[addr];
    pOp->p4type = P4_INT32;
    pOp->p4.i = p4;
  }
  return addr;
}
