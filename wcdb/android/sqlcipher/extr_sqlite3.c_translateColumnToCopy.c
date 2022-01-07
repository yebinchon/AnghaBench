
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int p1; scalar_t__ opcode; int p2; int p3; } ;
typedef TYPE_2__ VdbeOp ;
typedef int Vdbe ;
struct TYPE_8__ {TYPE_1__* db; int * pVdbe; } ;
struct TYPE_6__ {scalar_t__ mallocFailed; } ;
typedef TYPE_3__ Parse ;


 scalar_t__ OP_AddImm ;
 scalar_t__ OP_Column ;
 scalar_t__ OP_Copy ;
 scalar_t__ OP_Null ;
 scalar_t__ OP_Rowid ;
 int sqlite3VdbeCurrentAddr (int *) ;
 TYPE_2__* sqlite3VdbeGetOp (int *,int) ;

__attribute__((used)) static void translateColumnToCopy(
  Parse *pParse,
  int iStart,
  int iTabCur,
  int iRegister,
  int bIncrRowid
){
  Vdbe *v = pParse->pVdbe;
  VdbeOp *pOp = sqlite3VdbeGetOp(v, iStart);
  int iEnd = sqlite3VdbeCurrentAddr(v);
  if( pParse->db->mallocFailed ) return;
  for(; iStart<iEnd; iStart++, pOp++){
    if( pOp->p1!=iTabCur ) continue;
    if( pOp->opcode==OP_Column ){
      pOp->opcode = OP_Copy;
      pOp->p1 = pOp->p2 + iRegister;
      pOp->p2 = pOp->p3;
      pOp->p3 = 0;
    }else if( pOp->opcode==OP_Rowid ){
      if( bIncrRowid ){

        pOp->opcode = OP_AddImm;
        pOp->p1 = pOp->p2;
        pOp->p2 = 1;
      }else{
        pOp->opcode = OP_Null;
        pOp->p1 = 0;
        pOp->p3 = 0;
      }
    }
  }
}
