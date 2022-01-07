
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int (* xNext ) (int *,char const**,int*,int*,int*,int*) ;int (* xClose ) (int *) ;} ;
typedef TYPE_2__ sqlite3_tokenizer_module ;
typedef int sqlite3_tokenizer_cursor ;
struct TYPE_12__ {TYPE_2__* pModule; } ;
typedef TYPE_3__ sqlite3_tokenizer ;
typedef int sqlite3_int64 ;
struct TYPE_10__ {scalar_t__ pVtab; } ;
struct TYPE_16__ {scalar_t__ isRequireSeek; TYPE_6__* pDeferred; int iLangid; int pStmt; TYPE_1__ base; } ;
struct TYPE_15__ {int iCol; scalar_t__ pList; struct TYPE_15__* pNext; TYPE_5__* pToken; } ;
struct TYPE_14__ {scalar_t__ bFirst; int n; int z; scalar_t__ isPrefix; } ;
struct TYPE_13__ {int nColumn; scalar_t__* abNotindexed; TYPE_3__* pTokenizer; } ;
typedef TYPE_4__ Fts3Table ;
typedef TYPE_5__ Fts3PhraseToken ;
typedef TYPE_6__ Fts3DeferredToken ;
typedef TYPE_7__ Fts3Cursor ;


 int SQLITE_DONE ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts3PendingListAppend (scalar_t__*,int ,int,int,int*) ;
 int fts3PendingListAppendVarint (scalar_t__*,int ) ;
 scalar_t__ memcmp (char const*,int ,int) ;
 int sqlite3Fts3OpenTokenizer (TYPE_3__*,int ,char const*,int,int **) ;
 int sqlite3_column_int64 (int ,int ) ;
 scalar_t__ sqlite3_column_text (int ,int) ;
 int stub1 (int *,char const**,int*,int*,int*,int*) ;
 int stub2 (int *) ;

int sqlite3Fts3CacheDeferredDoclists(Fts3Cursor *pCsr){
  int rc = SQLITE_OK;
  if( pCsr->pDeferred ){
    int i;
    sqlite3_int64 iDocid;
    Fts3DeferredToken *pDef;

    Fts3Table *p = (Fts3Table *)pCsr->base.pVtab;
    sqlite3_tokenizer *pT = p->pTokenizer;
    sqlite3_tokenizer_module const *pModule = pT->pModule;

    assert( pCsr->isRequireSeek==0 );
    iDocid = sqlite3_column_int64(pCsr->pStmt, 0);

    for(i=0; i<p->nColumn && rc==SQLITE_OK; i++){
      if( p->abNotindexed[i]==0 ){
        const char *zText = (const char *)sqlite3_column_text(pCsr->pStmt, i+1);
        sqlite3_tokenizer_cursor *pTC = 0;

        rc = sqlite3Fts3OpenTokenizer(pT, pCsr->iLangid, zText, -1, &pTC);
        while( rc==SQLITE_OK ){
          char const *zToken;
          int nToken = 0;
          int iDum1 = 0, iDum2 = 0;
          int iPos = 0;

          rc = pModule->xNext(pTC, &zToken, &nToken, &iDum1, &iDum2, &iPos);
          for(pDef=pCsr->pDeferred; pDef && rc==SQLITE_OK; pDef=pDef->pNext){
            Fts3PhraseToken *pPT = pDef->pToken;
            if( (pDef->iCol>=p->nColumn || pDef->iCol==i)
                && (pPT->bFirst==0 || iPos==0)
                && (pPT->n==nToken || (pPT->isPrefix && pPT->n<nToken))
                && (0==memcmp(zToken, pPT->z, pPT->n))
              ){
              fts3PendingListAppend(&pDef->pList, iDocid, i, iPos, &rc);
            }
          }
        }
        if( pTC ) pModule->xClose(pTC);
        if( rc==SQLITE_DONE ) rc = SQLITE_OK;
      }
    }

    for(pDef=pCsr->pDeferred; pDef && rc==SQLITE_OK; pDef=pDef->pNext){
      if( pDef->pList ){
        rc = fts3PendingListAppendVarint(&pDef->pList, 0);
      }
    }
  }

  return rc;
}
