#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int nPagesize; scalar_t__ pCompress; } ;
struct TYPE_21__ {scalar_t__ iPg; int nCompress; int flags; int /*<<< orphan*/ * aData; TYPE_3__* pFS; } ;
struct TYPE_20__ {scalar_t__ iFirst; scalar_t__ iLastPg; int /*<<< orphan*/ * pRedirect; } ;
typedef  TYPE_1__ Segment ;
typedef  int /*<<< orphan*/  Redirect ;
typedef  TYPE_2__ Page ;
typedef  scalar_t__ LsmPgno ;
typedef  TYPE_3__ FileSystem ;

/* Variables and functions */
 int LSM_OK ; 
 int PAGE_HASPREV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (TYPE_3__*,TYPE_1__*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,TYPE_1__*,scalar_t__,int,scalar_t__*) ; 
 int FUNC7 (TYPE_3__*,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,TYPE_2__**,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_3__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(Segment *pRun, Page *pPg, int eDir, Page **ppNext){
  int rc = LSM_OK;
  FileSystem *pFS = pPg->pFS;
  LsmPgno iPg = pPg->iPg;

  FUNC0( 0==FUNC9(pFS, pRun) );
  if( pFS->pCompress ){
    int nSpace = pPg->nCompress + 2*3;

    do {
      if( eDir>0 ){
        rc = FUNC6(pFS, pRun, iPg, nSpace, &iPg);
      }else{
        if( iPg==pRun->iFirst ){
          iPg = 0;
        }else{
          rc = FUNC2(pFS, pRun, iPg, &iPg);
        }
      }

      nSpace = 0;
      if( iPg!=0 ){
        rc = FUNC7(pFS, pRun, iPg, 0, ppNext, &nSpace);
        FUNC0( (*ppNext==0)==(rc!=LSM_OK || nSpace>0) );
      }else{
        *ppNext = 0;
      }
    }while( nSpace>0 && rc==LSM_OK );

  }else{
    Redirect *pRedir = pRun ? pRun->pRedirect : 0;
    FUNC0( eDir==1 || eDir==-1 );
    if( eDir<0 ){
      if( pRun && iPg==pRun->iFirst ){
        *ppNext = 0;
        return LSM_OK;
      }else if( FUNC3(pFS, iPg) ){
        FUNC0( pPg->flags & PAGE_HASPREV );
        iPg = FUNC5(pFS, FUNC10(&pPg->aData[-4]));
      }else{
        iPg--;
      }
    }else{
      if( pRun ){
        if( iPg==pRun->iLastPg ){
          *ppNext = 0;
          return LSM_OK;
        }
      }

      if( FUNC4(pFS, iPg) ){
        int iBlk = FUNC8(
            pRedir, FUNC10(&pPg->aData[pFS->nPagesize-4])
        );
        iPg = FUNC1(pFS, iBlk);
      }else{
        iPg++;
      }
    }
    rc = FUNC7(pFS, pRun, iPg, 0, ppNext, 0);
  }

  return rc;
}