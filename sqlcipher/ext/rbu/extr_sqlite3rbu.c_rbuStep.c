
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ zIdx; int nCol; size_t* aiSrcOrder; scalar_t__ eType; int pSelect; scalar_t__* abTblPk; scalar_t__ nIndex; } ;
struct TYPE_9__ {scalar_t__ rc; int zErrmsg; TYPE_2__ objiter; int nPhaseOneStep; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
typedef TYPE_2__ RbuObjIter ;


 int RBU_DELETE ;
 int RBU_IDX_DELETE ;
 int RBU_IDX_INSERT ;
 int RBU_INSERT ;
 scalar_t__ RBU_PK_NONE ;
 scalar_t__ RBU_PK_VTAB ;
 int RBU_REPLACE ;
 int RBU_UPDATE ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int assertColumnName (int ,int,char*) ;
 int rbuBadControlError (TYPE_1__*) ;
 int rbuGetUpdateStmt (TYPE_1__*,TYPE_2__*,char const*,int **) ;
 int rbuStepOneOp (TYPE_1__*,int) ;
 int rbuStepType (TYPE_1__*,char const**) ;
 scalar_t__ resetAndCollectError (int *,int *) ;
 void* sqlite3_bind_value (int *,int,int *) ;
 int * sqlite3_column_value (int ,int) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static int rbuStep(sqlite3rbu *p){
  RbuObjIter *pIter = &p->objiter;
  const char *zMask = 0;
  int eType = rbuStepType(p, &zMask);

  if( eType ){
    assert( eType==RBU_INSERT || eType==RBU_DELETE
         || eType==RBU_REPLACE || eType==RBU_IDX_DELETE
         || eType==RBU_IDX_INSERT || eType==RBU_UPDATE
    );
    assert( eType!=RBU_UPDATE || pIter->zIdx==0 );

    if( pIter->zIdx==0 && (eType==RBU_IDX_DELETE || eType==RBU_IDX_INSERT) ){
      rbuBadControlError(p);
    }
    else if( eType==RBU_REPLACE ){
      if( pIter->zIdx==0 ){
        p->nPhaseOneStep += p->objiter.nIndex;
        rbuStepOneOp(p, RBU_DELETE);
      }
      if( p->rc==SQLITE_OK ) rbuStepOneOp(p, RBU_INSERT);
    }
    else if( eType!=RBU_UPDATE ){
      rbuStepOneOp(p, eType);
    }
    else{
      sqlite3_value *pVal;
      sqlite3_stmt *pUpdate = 0;
      assert( eType==RBU_UPDATE );
      p->nPhaseOneStep -= p->objiter.nIndex;
      rbuGetUpdateStmt(p, pIter, zMask, &pUpdate);
      if( pUpdate ){
        int i;
        for(i=0; p->rc==SQLITE_OK && i<pIter->nCol; i++){
          char c = zMask[pIter->aiSrcOrder[i]];
          pVal = sqlite3_column_value(pIter->pSelect, i);
          if( pIter->abTblPk[i] || c!='.' ){
            p->rc = sqlite3_bind_value(pUpdate, i+1, pVal);
          }
        }
        if( p->rc==SQLITE_OK
         && (pIter->eType==RBU_PK_VTAB || pIter->eType==RBU_PK_NONE)
        ){

          assertColumnName(pIter->pSelect, pIter->nCol+1, "rbu_rowid");
          pVal = sqlite3_column_value(pIter->pSelect, pIter->nCol+1);
          p->rc = sqlite3_bind_value(pUpdate, pIter->nCol+1, pVal);
        }
        if( p->rc==SQLITE_OK ){
          sqlite3_step(pUpdate);
          p->rc = resetAndCollectError(pUpdate, &p->zErrmsg);
        }
      }
    }
  }
  return p->rc;
}
