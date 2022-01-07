
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pc; scalar_t__ pAuxData; int nDbChange; int nChange; int lastRowid; int nCursor; int apCsr; int nMem; int aMem; int nOp; int aOp; int anExec; TYPE_2__* v; } ;
typedef TYPE_1__ VdbeFrame ;
struct TYPE_7__ {scalar_t__ pAuxData; TYPE_4__* db; int nChange; int nCursor; int apCsr; int nMem; int aMem; int nOp; int aOp; int anExec; } ;
typedef TYPE_2__ Vdbe ;
struct TYPE_8__ {int nChange; int lastRowid; } ;


 int closeCursorsInFrame (TYPE_2__*) ;
 int sqlite3VdbeDeleteAuxData (TYPE_4__*,scalar_t__*,int,int ) ;

int sqlite3VdbeFrameRestore(VdbeFrame *pFrame){
  Vdbe *v = pFrame->v;
  closeCursorsInFrame(v);



  v->aOp = pFrame->aOp;
  v->nOp = pFrame->nOp;
  v->aMem = pFrame->aMem;
  v->nMem = pFrame->nMem;
  v->apCsr = pFrame->apCsr;
  v->nCursor = pFrame->nCursor;
  v->db->lastRowid = pFrame->lastRowid;
  v->nChange = pFrame->nChange;
  v->db->nChange = pFrame->nDbChange;
  sqlite3VdbeDeleteAuxData(v->db, &v->pAuxData, -1, 0);
  v->pAuxData = pFrame->pAuxData;
  pFrame->pAuxData = 0;
  return pFrame->pc;
}
