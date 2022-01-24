#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* pFirst; TYPE_1__** aHash; } ;
struct TYPE_5__ {char const* zKey; char* zVal; struct TYPE_5__* pNext; struct TYPE_5__* pHashNext; } ;
typedef  TYPE_1__ IdxHashEntry ;
typedef  TYPE_2__ IdxHash ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*,int) ; 
 TYPE_1__* FUNC3 (int*,int) ; 
 scalar_t__ FUNC4 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC6(
  int *pRc, 
  IdxHash *pHash, 
  const char *zKey,
  const char *zVal
){
  int nKey = FUNC0(zKey);
  int iHash = FUNC2(zKey, nKey);
  int nVal = (zVal ? FUNC0(zVal) : 0);
  IdxHashEntry *pEntry;
  FUNC1( iHash>=0 );
  for(pEntry=pHash->aHash[iHash]; pEntry; pEntry=pEntry->pHashNext){
    if( FUNC0(pEntry->zKey)==nKey && 0==FUNC4(pEntry->zKey, zKey, nKey) ){
      return 1;
    }
  }
  pEntry = FUNC3(pRc, sizeof(IdxHashEntry) + nKey+1 + nVal+1);
  if( pEntry ){
    pEntry->zKey = (char*)&pEntry[1];
    FUNC5(pEntry->zKey, zKey, nKey);
    if( zVal ){
      pEntry->zVal = &pEntry->zKey[nKey+1];
      FUNC5(pEntry->zVal, zVal, nVal);
    }
    pEntry->pHashNext = pHash->aHash[iHash];
    pHash->aHash[iHash] = pEntry;

    pEntry->pNext = pHash->pFirst;
    pHash->pFirst = pEntry;
  }
  return 0;
}