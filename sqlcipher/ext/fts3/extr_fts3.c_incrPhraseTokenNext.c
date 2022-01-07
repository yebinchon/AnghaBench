
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int bIgnore; int pList; int nList; int iDocid; } ;
typedef TYPE_1__ TokenDoclist ;
struct TYPE_10__ {int iDocid; int nList; int pList; } ;
struct TYPE_9__ {int iDoclistToken; TYPE_2__* aToken; TYPE_6__ doclist; } ;
struct TYPE_8__ {scalar_t__ pSegcsr; scalar_t__ pDeferred; } ;
typedef int Fts3Table ;
typedef TYPE_2__ Fts3PhraseToken ;
typedef TYPE_3__ Fts3Phrase ;


 int SQLITE_OK ;
 int assert (int) ;
 int fts3EvalDlPhraseNext (int *,TYPE_6__*,int*) ;
 int sqlite3Fts3MsrIncrNext (int *,scalar_t__,int *,int *,int *) ;

__attribute__((used)) static int incrPhraseTokenNext(
  Fts3Table *pTab,
  Fts3Phrase *pPhrase,
  int iToken,
  TokenDoclist *p,
  u8 *pbEof
){
  int rc = SQLITE_OK;

  if( pPhrase->iDoclistToken==iToken ){
    assert( p->bIgnore==0 );
    assert( pPhrase->aToken[iToken].pSegcsr==0 );
    fts3EvalDlPhraseNext(pTab, &pPhrase->doclist, pbEof);
    p->pList = pPhrase->doclist.pList;
    p->nList = pPhrase->doclist.nList;
    p->iDocid = pPhrase->doclist.iDocid;
  }else{
    Fts3PhraseToken *pToken = &pPhrase->aToken[iToken];
    assert( pToken->pDeferred==0 );
    assert( pToken->pSegcsr || pPhrase->iDoclistToken>=0 );
    if( pToken->pSegcsr ){
      assert( p->bIgnore==0 );
      rc = sqlite3Fts3MsrIncrNext(
          pTab, pToken->pSegcsr, &p->iDocid, &p->pList, &p->nList
      );
      if( p->pList==0 ) *pbEof = 1;
    }else{
      p->bIgnore = 1;
    }
  }

  return rc;
}
