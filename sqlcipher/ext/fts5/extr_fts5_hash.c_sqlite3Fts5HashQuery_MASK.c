#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_9__ {TYPE_1__** aSlot; int /*<<< orphan*/  nSlot; } ;
struct TYPE_8__ {int nKey; int nData; struct TYPE_8__* pHashNext; } ;
typedef  TYPE_1__ Fts5HashEntry ;
typedef  TYPE_2__ Fts5Hash ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC4 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (int) ; 
 scalar_t__ FUNC7 (char*) ; 

int FUNC8(
  Fts5Hash *pHash,                /* Hash table to query */
  int nPre,
  const char *pTerm, int nTerm,   /* Query term */
  void **ppOut,                   /* OUT: Pointer to new object */
  int *pnDoclist                  /* OUT: Size of doclist in bytes */
){
  unsigned int iHash = FUNC3(pHash->nSlot, (const u8*)pTerm, nTerm);
  char *zKey = 0;
  Fts5HashEntry *p;

  for(p=pHash->aSlot[iHash]; p; p=p->pHashNext){
    zKey = FUNC1(p);
    FUNC0( p->nKey+1==(int)FUNC7(zKey) );
    if( nTerm==p->nKey+1 && FUNC4(zKey, pTerm, nTerm)==0 ) break;
  }

  if( p ){
    int nHashPre = sizeof(Fts5HashEntry) + nTerm + 1;
    int nList = p->nData - nHashPre;
    u8 *pRet = (u8*)(*ppOut = FUNC6(nPre + nList + 10));
    if( pRet ){
      Fts5HashEntry *pFaux = (Fts5HashEntry*)&pRet[nPre-nHashPre];
      FUNC5(&pRet[nPre], &((u8*)p)[nHashPre], nList);
      nList += FUNC2(pHash, p, pFaux);
      *pnDoclist = nList;
    }else{
      *pnDoclist = 0;
      return SQLITE_NOMEM;
    }
  }else{
    *ppOut = 0;
    *pnDoclist = 0;
  }

  return SQLITE_OK;
}