
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
typedef void* u16 ;
struct TYPE_8__ {int pEnv; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_9__ {int nRight; int * aRhs; int lhs; struct TYPE_9__* pNext; void* flags; void* iAge; } ;
typedef int Segment ;
typedef TYPE_2__ Level ;


 int LSM_OK ;
 int ckptNewSegment (int*,int*,int *) ;
 int ckptSetupMerge (TYPE_1__*,int*,int*,TYPE_2__*) ;
 scalar_t__ lsmMallocZeroRc (int ,int,int*) ;
 int lsmSortedFreeLevel (int ,TYPE_2__*) ;

__attribute__((used)) static int ckptLoadLevels(
  lsm_db *pDb,
  u32 *aIn,
  int *piIn,
  int nLevel,
  Level **ppLevel
){
  int i;
  int rc = LSM_OK;
  Level *pRet = 0;
  Level **ppNext;
  int iIn = *piIn;

  ppNext = &pRet;
  for(i=0; rc==LSM_OK && i<nLevel; i++){
    int iRight;
    Level *pLevel;


    pLevel = (Level *)lsmMallocZeroRc(pDb->pEnv, sizeof(Level), &rc);
    if( rc==LSM_OK ){
      pLevel->iAge = (u16)(aIn[iIn] & 0x0000FFFF);
      pLevel->flags = (u16)((aIn[iIn]>>16) & 0x0000FFFF);
      iIn++;
      pLevel->nRight = aIn[iIn++];
      if( pLevel->nRight ){
        int nByte = sizeof(Segment) * pLevel->nRight;
        pLevel->aRhs = (Segment *)lsmMallocZeroRc(pDb->pEnv, nByte, &rc);
      }
      if( rc==LSM_OK ){
        *ppNext = pLevel;
        ppNext = &pLevel->pNext;


        ckptNewSegment(aIn, &iIn, &pLevel->lhs);


        for(iRight=0; iRight<pLevel->nRight; iRight++){
          ckptNewSegment(aIn, &iIn, &pLevel->aRhs[iRight]);
        }


        if( pLevel->nRight>0 ){
          rc = ckptSetupMerge(pDb, aIn, &iIn, pLevel);
        }
      }
    }
  }

  if( rc!=LSM_OK ){


    lsmSortedFreeLevel(pDb->pEnv, pRet);
    pRet = 0;
  }

  *ppLevel = pRet;
  *piIn = iIn;
  return rc;
}
