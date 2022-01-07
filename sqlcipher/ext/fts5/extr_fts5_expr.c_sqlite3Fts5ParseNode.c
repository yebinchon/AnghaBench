
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_23__ {int nPhrase; TYPE_4__** apPhrase; } ;
struct TYPE_22__ {int eType; int nChild; scalar_t__ xNext; TYPE_6__* pNear; } ;
struct TYPE_21__ {scalar_t__ nTerm; TYPE_2__* aTerm; TYPE_5__* pNode; } ;
struct TYPE_20__ {scalar_t__ rc; scalar_t__ zErr; TYPE_1__* pConfig; } ;
struct TYPE_19__ {scalar_t__ bFirst; } ;
struct TYPE_18__ {scalar_t__ eDetail; } ;
typedef TYPE_3__ Fts5Parse ;
typedef TYPE_4__ Fts5ExprPhrase ;
typedef TYPE_5__ Fts5ExprNode ;
typedef TYPE_6__ Fts5ExprNearset ;


 int FTS5_AND ;
 scalar_t__ FTS5_DETAIL_FULL ;
 int FTS5_EOF ;
 int FTS5_NOT ;
 int FTS5_OR ;
 int FTS5_STRING ;
 scalar_t__ SQLITE_ERROR ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 int fts5ExprAddChildren (TYPE_5__*,TYPE_5__*) ;
 int fts5ExprAssignXNext (TYPE_5__*) ;
 scalar_t__ sqlite3Fts5MallocZero (scalar_t__*,int) ;
 int sqlite3Fts5ParseNearsetFree (TYPE_6__*) ;
 int sqlite3Fts5ParseNodeFree (TYPE_5__*) ;
 int sqlite3_free (TYPE_5__*) ;
 scalar_t__ sqlite3_mprintf (char*,char*) ;

Fts5ExprNode *sqlite3Fts5ParseNode(
  Fts5Parse *pParse,
  int eType,
  Fts5ExprNode *pLeft,
  Fts5ExprNode *pRight,
  Fts5ExprNearset *pNear
){
  Fts5ExprNode *pRet = 0;

  if( pParse->rc==SQLITE_OK ){
    int nChild = 0;
    sqlite3_int64 nByte;

    assert( (eType!=FTS5_STRING && !pNear)
         || (eType==FTS5_STRING && !pLeft && !pRight)
    );
    if( eType==FTS5_STRING && pNear==0 ) return 0;
    if( eType!=FTS5_STRING && pLeft==0 ) return pRight;
    if( eType!=FTS5_STRING && pRight==0 ) return pLeft;

    if( eType==FTS5_NOT ){
      nChild = 2;
    }else if( eType==FTS5_AND || eType==FTS5_OR ){
      nChild = 2;
      if( pLeft->eType==eType ) nChild += pLeft->nChild-1;
      if( pRight->eType==eType ) nChild += pRight->nChild-1;
    }

    nByte = sizeof(Fts5ExprNode) + sizeof(Fts5ExprNode*)*(nChild-1);
    pRet = (Fts5ExprNode*)sqlite3Fts5MallocZero(&pParse->rc, nByte);

    if( pRet ){
      pRet->eType = eType;
      pRet->pNear = pNear;
      fts5ExprAssignXNext(pRet);
      if( eType==FTS5_STRING ){
        int iPhrase;
        for(iPhrase=0; iPhrase<pNear->nPhrase; iPhrase++){
          pNear->apPhrase[iPhrase]->pNode = pRet;
          if( pNear->apPhrase[iPhrase]->nTerm==0 ){
            pRet->xNext = 0;
            pRet->eType = FTS5_EOF;
          }
        }

        if( pParse->pConfig->eDetail!=FTS5_DETAIL_FULL ){
          Fts5ExprPhrase *pPhrase = pNear->apPhrase[0];
          if( pNear->nPhrase!=1
           || pPhrase->nTerm>1
           || (pPhrase->nTerm>0 && pPhrase->aTerm[0].bFirst)
          ){
            assert( pParse->rc==SQLITE_OK );
            pParse->rc = SQLITE_ERROR;
            assert( pParse->zErr==0 );
            pParse->zErr = sqlite3_mprintf(
                "fts5: %s queries are not supported (detail!=full)",
                pNear->nPhrase==1 ? "phrase": "NEAR"
                );
            sqlite3_free(pRet);
            pRet = 0;
          }
        }
      }else{
        fts5ExprAddChildren(pRet, pLeft);
        fts5ExprAddChildren(pRet, pRight);
      }
    }
  }

  if( pRet==0 ){
    assert( pParse->rc!=SQLITE_OK );
    sqlite3Fts5ParseNodeFree(pLeft);
    sqlite3Fts5ParseNodeFree(pRight);
    sqlite3Fts5ParseNearsetFree(pNear);
  }
  return pRet;
}
