
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ pVtab; } ;
typedef TYPE_5__ sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
typedef scalar_t__ i64 ;
struct TYPE_9__ {int n; scalar_t__ p; } ;
struct TYPE_15__ {size_t iCol; scalar_t__* aDoc; scalar_t__* aCnt; scalar_t__ iInstPos; TYPE_4__* pFts5; TYPE_2__* pIter; TYPE_1__ term; } ;
struct TYPE_14__ {int eType; } ;
struct TYPE_12__ {TYPE_3__* pConfig; } ;
struct TYPE_11__ {int eDetail; char** azCol; int nCol; } ;
struct TYPE_10__ {scalar_t__ iRowid; } ;
typedef TYPE_6__ Fts5VocabTable ;
typedef TYPE_7__ Fts5VocabCursor ;


 int FTS5_DETAIL_COLUMNS ;
 int FTS5_DETAIL_FULL ;
 int FTS5_DETAIL_NONE ;
 int FTS5_POS2COLUMN (scalar_t__) ;
 int FTS5_POS2OFFSET (scalar_t__) ;
 int FTS5_VOCAB_COL ;
 int FTS5_VOCAB_INSTANCE ;
 int FTS5_VOCAB_ROW ;
 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int SQLITE_TRANSIENT ;
 int assert (int) ;
 int sqlite3_result_int (int *,int) ;
 int sqlite3_result_int64 (int *,scalar_t__) ;
 int sqlite3_result_text (int *,char const*,int,int ) ;

__attribute__((used)) static int fts5VocabColumnMethod(
  sqlite3_vtab_cursor *pCursor,
  sqlite3_context *pCtx,
  int iCol
){
  Fts5VocabCursor *pCsr = (Fts5VocabCursor*)pCursor;
  int eDetail = pCsr->pFts5->pConfig->eDetail;
  int eType = ((Fts5VocabTable*)(pCursor->pVtab))->eType;
  i64 iVal = 0;

  if( iCol==0 ){
    sqlite3_result_text(
        pCtx, (const char*)pCsr->term.p, pCsr->term.n, SQLITE_TRANSIENT
    );
  }else if( eType==FTS5_VOCAB_COL ){
    assert( iCol==1 || iCol==2 || iCol==3 );
    if( iCol==1 ){
      if( eDetail!=FTS5_DETAIL_NONE ){
        const char *z = pCsr->pFts5->pConfig->azCol[pCsr->iCol];
        sqlite3_result_text(pCtx, z, -1, SQLITE_STATIC);
      }
    }else if( iCol==2 ){
      iVal = pCsr->aDoc[pCsr->iCol];
    }else{
      iVal = pCsr->aCnt[pCsr->iCol];
    }
  }else if( eType==FTS5_VOCAB_ROW ){
    assert( iCol==1 || iCol==2 );
    if( iCol==1 ){
      iVal = pCsr->aDoc[0];
    }else{
      iVal = pCsr->aCnt[0];
    }
  }else{
    assert( eType==FTS5_VOCAB_INSTANCE );
    switch( iCol ){
      case 1:
        sqlite3_result_int64(pCtx, pCsr->pIter->iRowid);
        break;
      case 2: {
        int ii = -1;
        if( eDetail==FTS5_DETAIL_FULL ){
          ii = FTS5_POS2COLUMN(pCsr->iInstPos);
        }else if( eDetail==FTS5_DETAIL_COLUMNS ){
          ii = (int)pCsr->iInstPos;
        }
        if( ii>=0 && ii<pCsr->pFts5->pConfig->nCol ){
          const char *z = pCsr->pFts5->pConfig->azCol[ii];
          sqlite3_result_text(pCtx, z, -1, SQLITE_STATIC);
        }
        break;
      }
      default: {
        assert( iCol==3 );
        if( eDetail==FTS5_DETAIL_FULL ){
          int ii = FTS5_POS2OFFSET(pCsr->iInstPos);
          sqlite3_result_int(pCtx, ii);
        }
        break;
      }
    }
  }

  if( iVal>0 ) sqlite3_result_int64(pCtx, iVal);
  return SQLITE_OK;
}
