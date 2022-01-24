#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int iPg; int bWrite; TYPE_3__* pFS; struct TYPE_12__* aData; } ;
typedef  TYPE_1__ u8 ;
typedef  int i64 ;
struct TYPE_13__ {int nMetasize; scalar_t__ nMapLimit; int /*<<< orphan*/  pEnv; int /*<<< orphan*/  nMetaRwSize; int /*<<< orphan*/  fdDb; scalar_t__ pMap; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__ MetaPage ;
typedef  TYPE_3__ FileSystem ;

/* Variables and functions */
 int LSM_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int,int*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 

int FUNC7(
  FileSystem *pFS,                /* File-system connection */
  int bWrite,                     /* True for write access, false for read */
  int iPg,                        /* Either 1 or 2 */
  MetaPage **ppPg                 /* OUT: Pointer to MetaPage object */
){
  int rc = LSM_OK;
  MetaPage *pPg;
  FUNC0( iPg==1 || iPg==2 );

  pPg = FUNC5(pFS->pEnv, sizeof(Page), &rc);

  if( pPg ){
    i64 iOff = (iPg-1) * pFS->nMetasize;
    if( pFS->nMapLimit>0 ){
      FUNC1(pFS, 2*pFS->nMetasize, &rc);
      pPg->aData = (u8 *)(pFS->pMap) + iOff;
    }else{
      pPg->aData = FUNC4(pFS->pEnv, pFS->nMetasize, &rc);
      if( rc==LSM_OK && bWrite==0 ){
        rc = FUNC2(
            pFS->pEnv, pFS->fdDb, iOff, pPg->aData, pFS->nMetaRwSize
        );
      }
#ifndef NDEBUG
      /* pPg->aData causes an uninitialized access via a downstreadm write().
         After discussion on this list, this memory should not, for performance
         reasons, be memset. However, tracking down "real" misuse is more
         difficult with this "false" positive, so it is set when NDEBUG.
      */
      else if( rc==LSM_OK ){
        FUNC6( pPg->aData, 0x77, pFS->nMetasize );
      }
#endif
    }

    if( rc!=LSM_OK ){
      if( pFS->nMapLimit==0 ) FUNC3(pFS->pEnv, pPg->aData);
      FUNC3(pFS->pEnv, pPg);
      pPg = 0;
    }else{
      pPg->iPg = iPg;
      pPg->bWrite = bWrite;
      pPg->pFS = pFS;
    }
  }

  *ppPg = pPg;
  return rc;
}