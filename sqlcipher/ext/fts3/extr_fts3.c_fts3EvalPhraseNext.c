
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_12__ {scalar_t__ pVtab; } ;
struct TYPE_16__ {scalar_t__ bDesc; TYPE_1__ base; } ;
struct TYPE_15__ {int pNextDocid; int pList; int nList; int iDocid; scalar_t__ nAll; int aAll; } ;
struct TYPE_14__ {scalar_t__ bIncr; TYPE_4__ doclist; } ;
struct TYPE_13__ {scalar_t__ bDescIdx; } ;
typedef TYPE_2__ Fts3Table ;
typedef TYPE_3__ Fts3Phrase ;
typedef TYPE_4__ Fts3Doclist ;
typedef TYPE_5__ Fts3Cursor ;


 int SQLITE_OK ;
 int fts3EvalDlPhraseNext (TYPE_2__*,TYPE_4__*,int *) ;
 int fts3EvalIncrPhraseNext (TYPE_5__*,TYPE_3__*,int *) ;
 int sqlite3Fts3DoclistPrev (scalar_t__,int ,scalar_t__,int *,int *,int *,int *) ;

__attribute__((used)) static int fts3EvalPhraseNext(
  Fts3Cursor *pCsr,
  Fts3Phrase *p,
  u8 *pbEof
){
  int rc = SQLITE_OK;
  Fts3Doclist *pDL = &p->doclist;
  Fts3Table *pTab = (Fts3Table *)pCsr->base.pVtab;

  if( p->bIncr ){
    rc = fts3EvalIncrPhraseNext(pCsr, p, pbEof);
  }else if( pCsr->bDesc!=pTab->bDescIdx && pDL->nAll ){
    sqlite3Fts3DoclistPrev(pTab->bDescIdx, pDL->aAll, pDL->nAll,
        &pDL->pNextDocid, &pDL->iDocid, &pDL->nList, pbEof
    );
    pDL->pList = pDL->pNextDocid;
  }else{
    fts3EvalDlPhraseNext(pTab, pDL, pbEof);
  }

  return rc;
}
