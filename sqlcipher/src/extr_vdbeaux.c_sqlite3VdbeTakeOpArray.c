
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VdbeOp ;
struct TYPE_6__ {int nOp; int * aOp; int btreeMask; TYPE_1__* db; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_5__ {int mallocFailed; } ;


 int DbMaskAllZero (int ) ;
 int assert (int ) ;
 int resolveP2Values (TYPE_2__*,int*) ;

VdbeOp *sqlite3VdbeTakeOpArray(Vdbe *p, int *pnOp, int *pnMaxArg){
  VdbeOp *aOp = p->aOp;
  assert( aOp && !p->db->mallocFailed );


  assert( DbMaskAllZero(p->btreeMask) );

  resolveP2Values(p, pnMaxArg);
  *pnOp = p->nOp;
  p->aOp = 0;
  return aOp;
}
