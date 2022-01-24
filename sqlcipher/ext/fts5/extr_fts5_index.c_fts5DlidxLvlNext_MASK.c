#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ i64 ;
struct TYPE_5__ {int nn; scalar_t__* p; } ;
struct TYPE_4__ {int iOff; int bEof; size_t iFirstOff; scalar_t__ iRowid; int /*<<< orphan*/  iLeafPgno; TYPE_2__* pData; } ;
typedef  TYPE_1__ Fts5DlidxLvl ;
typedef  TYPE_2__ Fts5Data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(Fts5DlidxLvl *pLvl){
  Fts5Data *pData = pLvl->pData;

  if( pLvl->iOff==0 ){
    FUNC0( pLvl->bEof==0 );
    pLvl->iOff = 1;
    pLvl->iOff += FUNC2(&pData->p[1], pLvl->iLeafPgno);
    pLvl->iOff += FUNC1(&pData->p[pLvl->iOff], (u64*)&pLvl->iRowid);
    pLvl->iFirstOff = pLvl->iOff;
  }else{
    int iOff;
    for(iOff=pLvl->iOff; iOff<pData->nn; iOff++){
      if( pData->p[iOff] ) break; 
    }

    if( iOff<pData->nn ){
      i64 iVal;
      pLvl->iLeafPgno += (iOff - pLvl->iOff) + 1;
      iOff += FUNC1(&pData->p[iOff], (u64*)&iVal);
      pLvl->iRowid += iVal;
      pLvl->iOff = iOff;
    }else{
      pLvl->bEof = 1;
    }
  }

  return pLvl->bEof;
}