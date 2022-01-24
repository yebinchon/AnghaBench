#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {int nSlot; TYPE_1__** aSlot; } ;
struct TYPE_7__ {struct TYPE_7__* pHashNext; } ;
typedef  TYPE_1__ Fts5HashEntry ;
typedef  TYPE_2__ Fts5Hash ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 unsigned int FUNC1 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(Fts5Hash *pHash){
  int nNew = pHash->nSlot*2;
  int i;
  Fts5HashEntry **apNew;
  Fts5HashEntry **apOld = pHash->aSlot;

  apNew = (Fts5HashEntry**)FUNC4(nNew*sizeof(Fts5HashEntry*));
  if( !apNew ) return SQLITE_NOMEM;
  FUNC2(apNew, 0, nNew*sizeof(Fts5HashEntry*));

  for(i=0; i<pHash->nSlot; i++){
    while( apOld[i] ){
      unsigned int iHash;
      Fts5HashEntry *p = apOld[i];
      apOld[i] = p->pHashNext;
      iHash = FUNC1(nNew, (u8*)FUNC0(p),
                          (int)FUNC5(FUNC0(p)));
      p->pHashNext = apNew[iHash];
      apNew[iHash] = p;
    }
  }

  FUNC3(apOld);
  pHash->nSlot = nNew;
  pHash->aSlot = apNew;
  return SQLITE_OK;
}