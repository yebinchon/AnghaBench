#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct TYPE_6__* pHash; int /*<<< orphan*/  zBasis; } ;
typedef  TYPE_1__ fuzzer_stem ;
struct TYPE_7__ {int /*<<< orphan*/  zBuf; TYPE_1__** apHash; int /*<<< orphan*/  nBuf; } ;
typedef  TYPE_2__ fuzzer_cursor ;

/* Variables and functions */
 scalar_t__ SQLITE_NOMEM ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(fuzzer_cursor *pCur, fuzzer_stem *pStem){
  unsigned int h;
  fuzzer_stem *pLookup;

  if( FUNC1(pStem, &pCur->zBuf, &pCur->nBuf)==SQLITE_NOMEM ){
    return -1;
  }
  h = FUNC0(pCur->zBuf);
  pLookup = pCur->apHash[h];
  while( pLookup && FUNC2(pLookup->zBasis, pCur->zBuf)!=0 ){
    pLookup = pLookup->pHash;
  }
  return pLookup!=0;
}