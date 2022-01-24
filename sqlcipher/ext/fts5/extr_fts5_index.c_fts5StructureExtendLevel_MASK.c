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
typedef  int sqlite3_int64 ;
struct TYPE_5__ {TYPE_1__* aLevel; } ;
struct TYPE_4__ {int nSeg; int /*<<< orphan*/ * aSeg; } ;
typedef  int /*<<< orphan*/  Fts5StructureSegment ;
typedef  TYPE_1__ Fts5StructureLevel ;
typedef  TYPE_2__ Fts5Structure ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(
  int *pRc, 
  Fts5Structure *pStruct, 
  int iLvl, 
  int nExtra, 
  int bInsert
){
  if( *pRc==SQLITE_OK ){
    Fts5StructureLevel *pLvl = &pStruct->aLevel[iLvl];
    Fts5StructureSegment *aNew;
    sqlite3_int64 nByte;

    nByte = (pLvl->nSeg + nExtra) * sizeof(Fts5StructureSegment);
    aNew = FUNC2(pLvl->aSeg, nByte);
    if( aNew ){
      if( bInsert==0 ){
        FUNC1(&aNew[pLvl->nSeg], 0, sizeof(Fts5StructureSegment) * nExtra);
      }else{
        int nMove = pLvl->nSeg * sizeof(Fts5StructureSegment);
        FUNC0(&aNew[nExtra], aNew, nMove);
        FUNC1(aNew, 0, sizeof(Fts5StructureSegment) * nExtra);
      }
      pLvl->aSeg = aNew;
    }else{
      *pRc = SQLITE_NOMEM;
    }
  }
}