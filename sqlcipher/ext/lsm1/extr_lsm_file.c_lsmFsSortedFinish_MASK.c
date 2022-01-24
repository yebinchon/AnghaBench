#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_1__* pWorker; } ;
struct TYPE_18__ {scalar_t__ pCompress; int nPagesize; TYPE_8__* pDb; } ;
struct TYPE_17__ {int /*<<< orphan*/ * aData; } ;
struct TYPE_16__ {scalar_t__ iLastPg; scalar_t__ pRedirect; } ;
struct TYPE_15__ {scalar_t__* aiAppend; } ;
typedef  TYPE_2__ Segment ;
typedef  TYPE_3__ Page ;
typedef  scalar_t__ LsmPgno ;
typedef  TYPE_4__ FileSystem ;

/* Variables and functions */
 int LSM_APPLIST_SZ ; 
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (TYPE_4__*,scalar_t__) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(FileSystem *pFS, Segment *p){
  int rc = LSM_OK;
  if( p && p->iLastPg ){
    FUNC0( p->pRedirect==0 );

    /* Check if the last page of this run happens to be the last of a block.
    ** If it is, then an extra block has already been allocated for this run.
    ** Shift this extra block back to the free-block list. 
    **
    ** Otherwise, add the first free page in the last block used by the run
    ** to the lAppend list.
    */
    if( FUNC2(pFS, p->iLastPg)!=p->iLastPg ){
      int i;
      LsmPgno *aiAppend = pFS->pDb->pWorker->aiAppend;
      for(i=0; i<LSM_APPLIST_SZ; i++){
        if( aiAppend[i]==0 ){
          aiAppend[i] = p->iLastPg+1;
          break;
        }
      }
    }else if( pFS->pCompress==0 ){
      Page *pLast;
      rc = FUNC3(pFS, 0, p->iLastPg, 0, &pLast, 0);
      if( rc==LSM_OK ){
        int iBlk = (int)FUNC7(&pLast->aData[pFS->nPagesize-4]);
        FUNC5(pFS->pDb, iBlk);
        FUNC6(pLast);
      }
    }else{
      int iBlk = 0;
      rc = FUNC1(pFS, p, FUNC4(pFS, p->iLastPg), &iBlk);
      if( rc==LSM_OK ){
        FUNC5(pFS->pDb, iBlk);
      }
    }
  }
  return rc;
}