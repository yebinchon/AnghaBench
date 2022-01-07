
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t nChildMem; int nChildCsr; TYPE_2__* v; int pAuxData; } ;
typedef TYPE_1__ VdbeFrame ;
typedef int VdbeCursor ;
struct TYPE_8__ {int db; } ;
typedef int Mem ;


 int * VdbeFrameMem (TYPE_1__*) ;
 int assert (int ) ;
 int releaseMemArray (int *,size_t) ;
 int sqlite3DbFree (int ,TYPE_1__*) ;
 int sqlite3VdbeDeleteAuxData (int ,int *,int,int ) ;
 int sqlite3VdbeFrameIsValid (TYPE_1__*) ;
 int sqlite3VdbeFreeCursor (TYPE_2__*,int *) ;

void sqlite3VdbeFrameDelete(VdbeFrame *p){
  int i;
  Mem *aMem = VdbeFrameMem(p);
  VdbeCursor **apCsr = (VdbeCursor **)&aMem[p->nChildMem];
  assert( sqlite3VdbeFrameIsValid(p) );
  for(i=0; i<p->nChildCsr; i++){
    sqlite3VdbeFreeCursor(p->v, apCsr[i]);
  }
  releaseMemArray(aMem, p->nChildMem);
  sqlite3VdbeDeleteAuxData(p->v->db, &p->pAuxData, -1, 0);
  sqlite3DbFree(p->v->db, p);
}
