#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  iPrevId; } ;
struct TYPE_7__ {int bFreeList; char* pList; int nList; int /*<<< orphan*/  iDocid; } ;
struct TYPE_9__ {int nToken; int iDoclistToken; TYPE_1__ doclist; TYPE_2__* aToken; } ;
struct TYPE_8__ {int /*<<< orphan*/ * pDeferred; } ;
typedef  TYPE_2__ Fts3PhraseToken ;
typedef  TYPE_3__ Fts3Phrase ;
typedef  int /*<<< orphan*/  Fts3DeferredToken ;
typedef  TYPE_4__ Fts3Cursor ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char**,int,int /*<<< orphan*/ ,int,char**,char**) ; 
 int FUNC2 (int /*<<< orphan*/ *,char**,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(Fts3Cursor *pCsr, Fts3Phrase *pPhrase){
  int iToken;                     /* Used to iterate through phrase tokens */
  char *aPoslist = 0;             /* Position list for deferred tokens */
  int nPoslist = 0;               /* Number of bytes in aPoslist */
  int iPrev = -1;                 /* Token number of previous deferred token */

  FUNC0( pPhrase->doclist.bFreeList==0 );

  for(iToken=0; iToken<pPhrase->nToken; iToken++){
    Fts3PhraseToken *pToken = &pPhrase->aToken[iToken];
    Fts3DeferredToken *pDeferred = pToken->pDeferred;

    if( pDeferred ){
      char *pList;
      int nList;
      int rc = FUNC2(pDeferred, &pList, &nList);
      if( rc!=SQLITE_OK ) return rc;

      if( pList==0 ){
        FUNC3(aPoslist);
        pPhrase->doclist.pList = 0;
        pPhrase->doclist.nList = 0;
        return SQLITE_OK;

      }else if( aPoslist==0 ){
        aPoslist = pList;
        nPoslist = nList;

      }else{
        char *aOut = pList;
        char *p1 = aPoslist;
        char *p2 = aOut;

        FUNC0( iPrev>=0 );
        FUNC1(&aOut, iToken-iPrev, 0, 1, &p1, &p2);
        FUNC3(aPoslist);
        aPoslist = pList;
        nPoslist = (int)(aOut - aPoslist);
        if( nPoslist==0 ){
          FUNC3(aPoslist);
          pPhrase->doclist.pList = 0;
          pPhrase->doclist.nList = 0;
          return SQLITE_OK;
        }
      }
      iPrev = iToken;
    }
  }

  if( iPrev>=0 ){
    int nMaxUndeferred = pPhrase->iDoclistToken;
    if( nMaxUndeferred<0 ){
      pPhrase->doclist.pList = aPoslist;
      pPhrase->doclist.nList = nPoslist;
      pPhrase->doclist.iDocid = pCsr->iPrevId;
      pPhrase->doclist.bFreeList = 1;
    }else{
      int nDistance;
      char *p1;
      char *p2;
      char *aOut;

      if( nMaxUndeferred>iPrev ){
        p1 = aPoslist;
        p2 = pPhrase->doclist.pList;
        nDistance = nMaxUndeferred - iPrev;
      }else{
        p1 = pPhrase->doclist.pList;
        p2 = aPoslist;
        nDistance = iPrev - nMaxUndeferred;
      }

      aOut = (char *)FUNC4(nPoslist+8);
      if( !aOut ){
        FUNC3(aPoslist);
        return SQLITE_NOMEM;
      }
      
      pPhrase->doclist.pList = aOut;
      if( FUNC1(&aOut, nDistance, 0, 1, &p1, &p2) ){
        pPhrase->doclist.bFreeList = 1;
        pPhrase->doclist.nList = (int)(aOut - pPhrase->doclist.pList);
      }else{
        FUNC3(aOut);
        pPhrase->doclist.pList = 0;
        pPhrase->doclist.nList = 0;
      }
      FUNC3(aPoslist);
    }
  }

  return SQLITE_OK;
}