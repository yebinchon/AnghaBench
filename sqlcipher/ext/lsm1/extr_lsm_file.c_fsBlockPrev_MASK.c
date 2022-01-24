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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ i64 ;
typedef  int /*<<< orphan*/  aPrev ;
struct TYPE_7__ {scalar_t__ nMapLimit; scalar_t__ pCompress; int /*<<< orphan*/  fdDb; int /*<<< orphan*/  pEnv; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pRedirect; } ;
typedef  TYPE_1__ Segment ;
typedef  int /*<<< orphan*/  Redirect ;
typedef  TYPE_2__ FileSystem ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
  FileSystem *pFS,                /* File-system object handle */
  Segment *pSeg,                  /* Use this segment for block redirects */
  int iBlock,                     /* Read field from this block */
  int *piPrev                     /* OUT: Previous block in linked list */
){
  int rc = LSM_OK;                /* Return code */

  FUNC0( pFS->nMapLimit==0 || pFS->pCompress==0 );
  FUNC0( iBlock>0 );

  if( pFS->pCompress ){
    i64 iOff = FUNC1(pFS, iBlock) - 4;
    u8 aPrev[4];                  /* 4-byte pointer read from db file */
    rc = FUNC3(pFS->pEnv, pFS->fdDb, iOff, aPrev, sizeof(aPrev));
    if( rc==LSM_OK ){
      Redirect *pRedir = (pSeg ? pSeg->pRedirect : 0);
      *piPrev = FUNC2(pRedir, (int)FUNC4(aPrev));
    }
  }else{
    FUNC0( 0 );
  }
  return rc;
}