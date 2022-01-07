
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ sqlite3_int64 ;
struct TYPE_13__ {scalar_t__ pVtab; } ;
struct TYPE_18__ {scalar_t__ iPrevId; int bDesc; TYPE_1__ base; } ;
struct TYPE_17__ {scalar_t__ iDocid; int bEof; scalar_t__ eType; TYPE_4__* pPhrase; struct TYPE_17__* pRight; struct TYPE_17__* pLeft; struct TYPE_17__* pParent; } ;
struct TYPE_14__ {char* pList; int nAll; char* aAll; } ;
struct TYPE_16__ {int iColumn; scalar_t__ bIncr; char* pOrPoslist; scalar_t__ iOrDocid; TYPE_2__ doclist; } ;
struct TYPE_15__ {int nColumn; int bDescIdx; } ;
typedef TYPE_3__ Fts3Table ;
typedef TYPE_4__ Fts3Phrase ;
typedef TYPE_5__ Fts3Expr ;
typedef TYPE_6__ Fts3Cursor ;


 scalar_t__ DOCID_CMP (scalar_t__,scalar_t__) ;
 scalar_t__ FTSQUERY_NEAR ;
 scalar_t__ FTSQUERY_OR ;
 scalar_t__ FTSQUERY_PHRASE ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts3ColumnlistCopy (int ,char**) ;
 int fts3EvalNextRow (TYPE_6__*,TYPE_5__*,int*) ;
 int fts3EvalRestart (TYPE_6__*,TYPE_5__*,int*) ;
 int fts3GetVarint32 (char*,int*) ;
 int sqlite3Fts3DoclistNext (int,char*,int,char**,scalar_t__*,int*) ;
 int sqlite3Fts3DoclistPrev (int,char*,int,char**,scalar_t__*,int*,int*) ;

int sqlite3Fts3EvalPhrasePoslist(
  Fts3Cursor *pCsr,
  Fts3Expr *pExpr,
  int iCol,
  char **ppOut
){
  Fts3Phrase *pPhrase = pExpr->pPhrase;
  Fts3Table *pTab = (Fts3Table *)pCsr->base.pVtab;
  char *pIter;
  int iThis;
  sqlite3_int64 iDocid;



  *ppOut = 0;
  assert( iCol>=0 && iCol<pTab->nColumn );
  if( (pPhrase->iColumn<pTab->nColumn && pPhrase->iColumn!=iCol) ){
    return SQLITE_OK;
  }

  iDocid = pExpr->iDocid;
  pIter = pPhrase->doclist.pList;
  if( iDocid!=pCsr->iPrevId || pExpr->bEof ){
    int rc = SQLITE_OK;
    int bDescDoclist = pTab->bDescIdx;
    int bOr = 0;
    u8 bTreeEof = 0;
    Fts3Expr *p;
    Fts3Expr *pNear;
    int bMatch;






    pNear = pExpr;
    for(p=pExpr->pParent; p; p=p->pParent){
      if( p->eType==FTSQUERY_OR ) bOr = 1;
      if( p->eType==FTSQUERY_NEAR ) pNear = p;
      if( p->bEof ) bTreeEof = 1;
    }
    if( bOr==0 ) return SQLITE_OK;




    if( pPhrase->bIncr ){
      int bEofSave = pNear->bEof;
      fts3EvalRestart(pCsr, pNear, &rc);
      while( rc==SQLITE_OK && !pNear->bEof ){
        fts3EvalNextRow(pCsr, pNear, &rc);
        if( bEofSave==0 && pNear->iDocid==iDocid ) break;
      }
      assert( rc!=SQLITE_OK || pPhrase->bIncr==0 );
    }
    if( bTreeEof ){
      while( rc==SQLITE_OK && !pNear->bEof ){
        fts3EvalNextRow(pCsr, pNear, &rc);
      }
    }
    if( rc!=SQLITE_OK ) return rc;

    bMatch = 1;
    for(p=pNear; p; p=p->pLeft){
      u8 bEof = 0;
      Fts3Expr *pTest = p;
      Fts3Phrase *pPh;
      assert( pTest->eType==FTSQUERY_NEAR || pTest->eType==FTSQUERY_PHRASE );
      if( pTest->eType==FTSQUERY_NEAR ) pTest = pTest->pRight;
      assert( pTest->eType==FTSQUERY_PHRASE );
      pPh = pTest->pPhrase;

      pIter = pPh->pOrPoslist;
      iDocid = pPh->iOrDocid;
      if( pCsr->bDesc==bDescDoclist ){
        bEof = !pPh->doclist.nAll ||
          (pIter >= (pPh->doclist.aAll + pPh->doclist.nAll));
        while( (pIter==0 || DOCID_CMP(iDocid, pCsr->iPrevId)<0 ) && bEof==0 ){
          sqlite3Fts3DoclistNext(
              bDescDoclist, pPh->doclist.aAll, pPh->doclist.nAll,
              &pIter, &iDocid, &bEof
          );
        }
      }else{
        bEof = !pPh->doclist.nAll || (pIter && pIter<=pPh->doclist.aAll);
        while( (pIter==0 || DOCID_CMP(iDocid, pCsr->iPrevId)>0 ) && bEof==0 ){
          int dummy;
          sqlite3Fts3DoclistPrev(
              bDescDoclist, pPh->doclist.aAll, pPh->doclist.nAll,
              &pIter, &iDocid, &dummy, &bEof
              );
        }
      }
      pPh->pOrPoslist = pIter;
      pPh->iOrDocid = iDocid;
      if( bEof || iDocid!=pCsr->iPrevId ) bMatch = 0;
    }

    if( bMatch ){
      pIter = pPhrase->pOrPoslist;
    }else{
      pIter = 0;
    }
  }
  if( pIter==0 ) return SQLITE_OK;

  if( *pIter==0x01 ){
    pIter++;
    pIter += fts3GetVarint32(pIter, &iThis);
  }else{
    iThis = 0;
  }
  while( iThis<iCol ){
    fts3ColumnlistCopy(0, &pIter);
    if( *pIter==0x00 ) return SQLITE_OK;
    pIter++;
    pIter += fts3GetVarint32(pIter, &iThis);
  }
  if( *pIter==0x00 ){
    pIter = 0;
  }

  *ppOut = ((iCol==iThis)?pIter:0);
  return SQLITE_OK;
}
