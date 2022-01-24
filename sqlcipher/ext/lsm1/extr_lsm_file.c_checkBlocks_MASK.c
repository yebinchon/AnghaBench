#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_5__ {scalar_t__ nSize; scalar_t__ iFirst; scalar_t__ iLastPg; } ;
typedef  TYPE_1__ Segment ;
typedef  int /*<<< orphan*/  FileSystem ;

/* Variables and functions */
 int INTEGRITY_CHECK_FIRST_PG ; 
 int INTEGRITY_CHECK_LAST_PG ; 
 int INTEGRITY_CHECK_USED ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(
  FileSystem *pFS, 
  Segment *pSeg,
  int bExtra,                     /* If true, count the "next" block if any */
  int nUsed,
  u8 *aUsed
){
  if( pSeg ){
    if( pSeg && pSeg->nSize>0 ){
      int rc;
      int iBlk;                   /* Current block (during iteration) */
      int iLastBlk;               /* Last block of segment */
      int iFirstBlk;              /* First block of segment */
      int bLastIsLastOnBlock;     /* True iLast is the last on its block */

      FUNC0( 0==FUNC5(pFS, pSeg) );
      iBlk = iFirstBlk = FUNC4(pFS, pSeg->iFirst);
      iLastBlk = FUNC4(pFS, pSeg->iLastPg);

      bLastIsLastOnBlock = (FUNC3(pFS, iLastBlk)==pSeg->iLastPg);
      FUNC0( iBlk>0 );

      do {
        /* iBlk is a part of this sorted run. */
        aUsed[iBlk-1] |= INTEGRITY_CHECK_USED;

        /* If the first page of this block is also part of the segment,
        ** set the flag to indicate that the first page of iBlk is in use.  
        */
        if( FUNC2(pFS, iBlk)==pSeg->iFirst || iBlk!=iFirstBlk ){
          FUNC0( (aUsed[iBlk-1] & INTEGRITY_CHECK_FIRST_PG)==0 );
          aUsed[iBlk-1] |= INTEGRITY_CHECK_FIRST_PG;
        }

        /* Unless the sorted run finishes before the last page on this block, 
        ** the last page of this block is also in use.  */
        if( iBlk!=iLastBlk || bLastIsLastOnBlock ){
          FUNC0( (aUsed[iBlk-1] & INTEGRITY_CHECK_LAST_PG)==0 );
          aUsed[iBlk-1] |= INTEGRITY_CHECK_LAST_PG;
        }

        /* Special case. The sorted run being scanned is the output run of
        ** a level currently undergoing an incremental merge. The sorted
        ** run ends on the last page of iBlk, but the next block has already
        ** been allocated. So mark it as in use as well.  */
        if( iBlk==iLastBlk && bLastIsLastOnBlock && bExtra ){
          int iExtra = 0;
          rc = FUNC1(pFS, pSeg, iBlk, &iExtra);
          FUNC0( rc==LSM_OK );

          FUNC0( aUsed[iExtra-1]==0 );
          aUsed[iExtra-1] |= INTEGRITY_CHECK_USED;
          aUsed[iExtra-1] |= INTEGRITY_CHECK_FIRST_PG;
          aUsed[iExtra-1] |= INTEGRITY_CHECK_LAST_PG;
        }

        /* Move on to the next block in the sorted run. Or set iBlk to zero
        ** in order to break out of the loop if this was the last block in
        ** the run.  */
        if( iBlk==iLastBlk ){
          iBlk = 0;
        }else{
          rc = FUNC1(pFS, pSeg, iBlk, &iBlk);
          FUNC0( rc==LSM_OK );
        }
      }while( iBlk );
    }
  }
}