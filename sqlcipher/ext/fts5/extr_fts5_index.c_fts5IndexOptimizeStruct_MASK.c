#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int sqlite3_int64 ;
struct TYPE_11__ {int /*<<< orphan*/  rc; } ;
struct TYPE_10__ {int nSegment; int nLevel; int nRef; TYPE_1__* aLevel; int /*<<< orphan*/  nWriteCounter; } ;
struct TYPE_9__ {int nSeg; int nMerge; int /*<<< orphan*/ * aSeg; } ;
typedef  int /*<<< orphan*/  Fts5StructureSegment ;
typedef  TYPE_1__ Fts5StructureLevel ;
typedef  TYPE_2__ Fts5Structure ;
typedef  TYPE_3__ Fts5Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static Fts5Structure *FUNC4(
  Fts5Index *p, 
  Fts5Structure *pStruct
){
  Fts5Structure *pNew = 0;
  sqlite3_int64 nByte = sizeof(Fts5Structure);
  int nSeg = pStruct->nSegment;
  int i;

  /* Figure out if this structure requires optimization. A structure does
  ** not require optimization if either:
  **
  **  + it consists of fewer than two segments, or 
  **  + all segments are on the same level, or
  **  + all segments except one are currently inputs to a merge operation.
  **
  ** In the first case, return NULL. In the second, increment the ref-count
  ** on *pStruct and return a copy of the pointer to it.
  */
  if( nSeg<2 ) return 0;
  for(i=0; i<pStruct->nLevel; i++){
    int nThis = pStruct->aLevel[i].nSeg;
    if( nThis==nSeg || (nThis==nSeg-1 && pStruct->aLevel[i].nMerge==nThis) ){
      FUNC1(pStruct);
      return pStruct;
    }
    FUNC0( pStruct->aLevel[i].nMerge<=nThis );
  }

  nByte += (pStruct->nLevel+1) * sizeof(Fts5StructureLevel);
  pNew = (Fts5Structure*)FUNC2(&p->rc, nByte);

  if( pNew ){
    Fts5StructureLevel *pLvl;
    nByte = nSeg * sizeof(Fts5StructureSegment);
    pNew->nLevel = pStruct->nLevel+1;
    pNew->nRef = 1;
    pNew->nWriteCounter = pStruct->nWriteCounter;
    pLvl = &pNew->aLevel[pStruct->nLevel];
    pLvl->aSeg = (Fts5StructureSegment*)FUNC2(&p->rc, nByte);
    if( pLvl->aSeg ){
      int iLvl, iSeg;
      int iSegOut = 0;
      /* Iterate through all segments, from oldest to newest. Add them to
      ** the new Fts5Level object so that pLvl->aSeg[0] is the oldest
      ** segment in the data structure.  */
      for(iLvl=pStruct->nLevel-1; iLvl>=0; iLvl--){
        for(iSeg=0; iSeg<pStruct->aLevel[iLvl].nSeg; iSeg++){
          pLvl->aSeg[iSegOut] = pStruct->aLevel[iLvl].aSeg[iSeg];
          iSegOut++;
        }
      }
      pNew->nSegment = pLvl->nSeg = nSeg;
    }else{
      FUNC3(pNew);
      pNew = 0;
    }
  }

  return pNew;
}