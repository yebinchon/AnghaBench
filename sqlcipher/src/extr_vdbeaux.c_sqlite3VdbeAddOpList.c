
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {size_t opcode; scalar_t__ p2; int p3; int p1; } ;
typedef TYPE_3__ VdbeOpList ;
struct TYPE_11__ {scalar_t__ p; } ;
struct TYPE_14__ {size_t opcode; scalar_t__ p2; int iSrcLine; scalar_t__ zComment; scalar_t__ p5; TYPE_1__ p4; int p4type; int p3; int p1; } ;
typedef TYPE_4__ VdbeOp ;
struct TYPE_15__ {scalar_t__ magic; int nOp; int nOpAlloc; TYPE_4__* aOp; TYPE_2__* db; } ;
typedef TYPE_5__ Vdbe ;
struct TYPE_12__ {int flags; } ;


 int OPFLG_JUMP ;
 int P4_NOTUSED ;
 int SQLITE_VdbeAddopTrace ;
 scalar_t__ VDBE_MAGIC_INIT ;
 int assert (int) ;
 scalar_t__ growOpArray (TYPE_5__*,int) ;
 int* sqlite3OpcodeProperty ;
 int sqlite3VdbePrintOp (int ,int,TYPE_4__*) ;

VdbeOp *sqlite3VdbeAddOpList(
  Vdbe *p,
  int nOp,
  VdbeOpList const *aOp,
  int iLineno
){
  int i;
  VdbeOp *pOut, *pFirst;
  assert( nOp>0 );
  assert( p->magic==VDBE_MAGIC_INIT );
  if( p->nOp + nOp > p->nOpAlloc && growOpArray(p, nOp) ){
    return 0;
  }
  pFirst = pOut = &p->aOp[p->nOp];
  for(i=0; i<nOp; i++, aOp++, pOut++){
    pOut->opcode = aOp->opcode;
    pOut->p1 = aOp->p1;
    pOut->p2 = aOp->p2;
    assert( aOp->p2>=0 );
    if( (sqlite3OpcodeProperty[aOp->opcode] & OPFLG_JUMP)!=0 && aOp->p2>0 ){
      pOut->p2 += p->nOp;
    }
    pOut->p3 = aOp->p3;
    pOut->p4type = P4_NOTUSED;
    pOut->p4.p = 0;
    pOut->p5 = 0;






    (void)iLineno;






  }
  p->nOp += nOp;
  return pFirst;
}
