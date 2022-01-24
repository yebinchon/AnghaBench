#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct WalSegment {int dummy; } ;
typedef  int sqlite3_int64 ;
typedef  scalar_t__ ht_slot ;
struct TYPE_14__ {int nSegment; TYPE_2__* aSegment; } ;
typedef  TYPE_3__ WalIterator ;
struct TYPE_15__ {int iZero; scalar_t__ aPgno; scalar_t__ aHash; } ;
typedef  TYPE_4__ WalHashLoc ;
struct TYPE_12__ {scalar_t__ mxFrame; } ;
struct TYPE_16__ {TYPE_1__ hdr; scalar_t__ ckptLock; } ;
typedef  TYPE_5__ Wal ;
struct TYPE_13__ {size_t iZero; int nEntry; int* aPgno; scalar_t__* aIndex; } ;

/* Variables and functions */
 int HASHTABLE_NPAGE ; 
 int SQLITE_NOMEM_BKPT ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (TYPE_5__*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int*,scalar_t__*,scalar_t__*,int*) ; 

__attribute__((used)) static int FUNC8(Wal *pWal, u32 nBackfill, WalIterator **pp){
  WalIterator *p;                 /* Return value */
  int nSegment;                   /* Number of segments to merge */
  u32 iLast;                      /* Last frame in log */
  sqlite3_int64 nByte;            /* Number of bytes to allocate */
  int i;                          /* Iterator variable */
  ht_slot *aTmp;                  /* Temp space used by merge-sort */
  int rc = SQLITE_OK;             /* Return Code */

  /* This routine only runs while holding the checkpoint lock. And
  ** it only runs if there is actually content in the log (mxFrame>0).
  */
  FUNC0( pWal->ckptLock && pWal->hdr.mxFrame>0 );
  iLast = pWal->hdr.mxFrame;

  /* Allocate space for the WalIterator object. */
  nSegment = FUNC4(iLast) + 1;
  nByte = sizeof(WalIterator) 
        + (nSegment-1)*sizeof(struct WalSegment)
        + iLast*sizeof(ht_slot);
  p = (WalIterator *)FUNC3(nByte);
  if( !p ){
    return SQLITE_NOMEM_BKPT;
  }
  FUNC1(p, 0, nByte);
  p->nSegment = nSegment;

  /* Allocate temporary space used by the merge-sort routine. This block
  ** of memory will be freed before this function returns.
  */
  aTmp = (ht_slot *)FUNC3(
      sizeof(ht_slot) * (iLast>HASHTABLE_NPAGE?HASHTABLE_NPAGE:iLast)
  );
  if( !aTmp ){
    rc = SQLITE_NOMEM_BKPT;
  }

  for(i=FUNC4(nBackfill+1); rc==SQLITE_OK && i<nSegment; i++){
    WalHashLoc sLoc;

    rc = FUNC5(pWal, i, &sLoc);
    if( rc==SQLITE_OK ){
      int j;                      /* Counter variable */
      int nEntry;                 /* Number of entries in this segment */
      ht_slot *aIndex;            /* Sorted index for this segment */

      sLoc.aPgno++;
      if( (i+1)==nSegment ){
        nEntry = (int)(iLast - sLoc.iZero);
      }else{
        nEntry = (int)((u32*)sLoc.aHash - (u32*)sLoc.aPgno);
      }
      aIndex = &((ht_slot *)&p->aSegment[p->nSegment])[sLoc.iZero];
      sLoc.iZero++;
  
      for(j=0; j<nEntry; j++){
        aIndex[j] = (ht_slot)j;
      }
      FUNC7((u32 *)sLoc.aPgno, aTmp, aIndex, &nEntry);
      p->aSegment[i].iZero = sLoc.iZero;
      p->aSegment[i].nEntry = nEntry;
      p->aSegment[i].aIndex = aIndex;
      p->aSegment[i].aPgno = (u32 *)sLoc.aPgno;
    }
  }
  FUNC2(aTmp);

  if( rc!=SQLITE_OK ){
    FUNC6(p);
    p = 0;
  }
  *pp = p;
  return rc;
}