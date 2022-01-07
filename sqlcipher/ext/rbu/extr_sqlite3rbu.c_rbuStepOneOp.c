
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ zIdx; int nCol; scalar_t__ eType; scalar_t__* abTblPk; int pSelect; int * pInsert; int * pDelete; scalar_t__ nIndex; } ;
struct TYPE_5__ {int zErrmsg; void* rc; TYPE_2__ objiter; int nPhaseOneStep; } ;
typedef TYPE_1__ sqlite3rbu ;
typedef int sqlite3_value ;
typedef int sqlite3_stmt ;
typedef TYPE_2__ RbuObjIter ;


 int RBU_DELETE ;
 int RBU_IDX_DELETE ;
 int RBU_IDX_INSERT ;
 int RBU_INSERT ;
 scalar_t__ RBU_PK_EXTERNAL ;
 scalar_t__ RBU_PK_IPK ;
 scalar_t__ RBU_PK_NONE ;
 scalar_t__ RBU_PK_VTAB ;
 void* SQLITE_MISMATCH ;
 scalar_t__ SQLITE_NULL ;
 void* SQLITE_OK ;
 int assert (int) ;
 int assertColumnName (int ,int,char*) ;
 scalar_t__ rbuIsVacuum (TYPE_1__*) ;
 void* resetAndCollectError (int *,int *) ;
 void* sqlite3_bind_value (int *,int,int *) ;
 scalar_t__ sqlite3_column_type (int ,int) ;
 int * sqlite3_column_value (int ,int) ;
 int sqlite3_mprintf (char*) ;
 int sqlite3_step (int *) ;

__attribute__((used)) static void rbuStepOneOp(sqlite3rbu *p, int eType){
  RbuObjIter *pIter = &p->objiter;
  sqlite3_value *pVal;
  sqlite3_stmt *pWriter;
  int i;

  assert( p->rc==SQLITE_OK );
  assert( eType!=RBU_DELETE || pIter->zIdx==0 );
  assert( eType==RBU_DELETE || eType==RBU_IDX_DELETE
       || eType==RBU_INSERT || eType==RBU_IDX_INSERT
  );





  if( eType==RBU_DELETE ){
    p->nPhaseOneStep -= p->objiter.nIndex;
  }

  if( eType==RBU_IDX_DELETE || eType==RBU_DELETE ){
    pWriter = pIter->pDelete;
  }else{
    pWriter = pIter->pInsert;
  }

  for(i=0; i<pIter->nCol; i++){



    if( eType==RBU_INSERT
     && pIter->zIdx==0 && pIter->eType==RBU_PK_IPK && pIter->abTblPk[i]
     && sqlite3_column_type(pIter->pSelect, i)==SQLITE_NULL
    ){
      p->rc = SQLITE_MISMATCH;
      p->zErrmsg = sqlite3_mprintf("datatype mismatch");
      return;
    }

    if( eType==RBU_DELETE && pIter->abTblPk[i]==0 ){
      continue;
    }

    pVal = sqlite3_column_value(pIter->pSelect, i);
    p->rc = sqlite3_bind_value(pWriter, i+1, pVal);
    if( p->rc ) return;
  }
  if( pIter->zIdx==0 ){
    if( pIter->eType==RBU_PK_VTAB
     || pIter->eType==RBU_PK_NONE
     || (pIter->eType==RBU_PK_EXTERNAL && rbuIsVacuum(p))
    ){







      assertColumnName(pIter->pSelect, pIter->nCol+1,
          rbuIsVacuum(p) ? "rowid" : "rbu_rowid"
      );
      pVal = sqlite3_column_value(pIter->pSelect, pIter->nCol+1);
      p->rc = sqlite3_bind_value(pWriter, pIter->nCol+1, pVal);
    }
  }
  if( p->rc==SQLITE_OK ){
    sqlite3_step(pWriter);
    p->rc = resetAndCollectError(pWriter, &p->zErrmsg);
  }
}
