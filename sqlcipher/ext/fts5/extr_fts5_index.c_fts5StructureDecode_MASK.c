#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int sqlite3_int64 ;
struct TYPE_8__ {int nRef; int nLevel; int nSegment; TYPE_2__* aLevel; int /*<<< orphan*/  nWriteCounter; } ;
struct TYPE_7__ {int nMerge; int nSeg; TYPE_1__* aSeg; } ;
struct TYPE_6__ {int iSegid; int pgnoFirst; int pgnoLast; } ;
typedef  TYPE_1__ Fts5StructureSegment ;
typedef  TYPE_2__ Fts5StructureLevel ;
typedef  TYPE_3__ Fts5Structure ;

/* Variables and functions */
 int FTS5_CORRUPT ; 
 int FTS5_MAX_SEGMENT ; 
 int SQLITE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int*,int) ; 

__attribute__((used)) static int FUNC5(
  const u8 *pData,                /* Buffer containing serialized structure */
  int nData,                      /* Size of buffer pData in bytes */
  int *piCookie,                  /* Configuration cookie value */
  Fts5Structure **ppOut           /* OUT: Deserialized object */
){
  int rc = SQLITE_OK;
  int i = 0;
  int iLvl;
  int nLevel = 0;
  int nSegment = 0;
  sqlite3_int64 nByte;            /* Bytes of space to allocate at pRet */
  Fts5Structure *pRet = 0;        /* Structure object to return */

  /* Grab the cookie value */
  if( piCookie ) *piCookie = FUNC2(pData);
  i = 4;

  /* Read the total number of levels and segments from the start of the
  ** structure record.  */
  i += FUNC0(&pData[i], nLevel);
  i += FUNC0(&pData[i], nSegment);
  if( nLevel>FTS5_MAX_SEGMENT   || nLevel<0
   || nSegment>FTS5_MAX_SEGMENT || nSegment<0
  ){
    return FTS5_CORRUPT;
  }
  nByte = (
      sizeof(Fts5Structure) +                    /* Main structure */
      sizeof(Fts5StructureLevel) * (nLevel-1)    /* aLevel[] array */
  );
  pRet = (Fts5Structure*)FUNC4(&rc, nByte);

  if( pRet ){
    pRet->nRef = 1;
    pRet->nLevel = nLevel;
    pRet->nSegment = nSegment;
    i += FUNC3(&pData[i], &pRet->nWriteCounter);

    for(iLvl=0; rc==SQLITE_OK && iLvl<nLevel; iLvl++){
      Fts5StructureLevel *pLvl = &pRet->aLevel[iLvl];
      int nTotal = 0;
      int iSeg;

      if( i>=nData ){
        rc = FTS5_CORRUPT;
      }else{
        i += FUNC0(&pData[i], pLvl->nMerge);
        i += FUNC0(&pData[i], nTotal);
        if( nTotal<pLvl->nMerge ) rc = FTS5_CORRUPT;
        pLvl->aSeg = (Fts5StructureSegment*)FUNC4(&rc, 
            nTotal * sizeof(Fts5StructureSegment)
        );
        nSegment -= nTotal;
      }

      if( rc==SQLITE_OK ){
        pLvl->nSeg = nTotal;
        for(iSeg=0; iSeg<nTotal; iSeg++){
          Fts5StructureSegment *pSeg = &pLvl->aSeg[iSeg];
          if( i>=nData ){
            rc = FTS5_CORRUPT;
            break;
          }
          i += FUNC0(&pData[i], pSeg->iSegid);
          i += FUNC0(&pData[i], pSeg->pgnoFirst);
          i += FUNC0(&pData[i], pSeg->pgnoLast);
          if( pSeg->pgnoLast<pSeg->pgnoFirst ){
            rc = FTS5_CORRUPT;
            break;
          }
        }
        if( iLvl>0 && pLvl[-1].nMerge && nTotal==0 ) rc = FTS5_CORRUPT;
        if( iLvl==nLevel-1 && pLvl->nMerge ) rc = FTS5_CORRUPT;
      }
    }
    if( nSegment!=0 && rc==SQLITE_OK ) rc = FTS5_CORRUPT;

    if( rc!=SQLITE_OK ){
      FUNC1(pRet);
      pRet = 0;
    }
  }

  *ppOut = pRet;
  return rc;
}