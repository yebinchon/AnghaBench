#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_9__ {int flags; scalar_t__ nRight; int /*<<< orphan*/ * aRhs; int /*<<< orphan*/  lhs; scalar_t__ iAge; TYPE_3__* pMerge; } ;
struct TYPE_7__ {scalar_t__ iCell; int /*<<< orphan*/  iPg; } ;
struct TYPE_8__ {int nInput; scalar_t__ nSkip; int /*<<< orphan*/  iCurrentPtr; TYPE_2__ splitkey; TYPE_1__* aInput; } ;
struct TYPE_6__ {scalar_t__ iCell; int /*<<< orphan*/  iPg; } ;
typedef  TYPE_3__ Merge ;
typedef  TYPE_4__ Level ;
typedef  int /*<<< orphan*/  CkptBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int*) ; 

__attribute__((used)) static void FUNC4(
  Level *pLevel,                  /* Level object to serialize */
  CkptBuffer *p,                  /* Append new level record to this ckpt */
  int *piOut,                     /* IN/OUT: Size of checkpoint so far */
  int *pRc                        /* IN/OUT: Error code */
){
  int iOut = *piOut;
  Merge *pMerge;

  pMerge = pLevel->pMerge;
  FUNC3(p, iOut++, (u32)pLevel->iAge + (u32)(pLevel->flags<<16), pRc);
  FUNC3(p, iOut++, pLevel->nRight, pRc);
  FUNC2(&pLevel->lhs, p, &iOut, pRc);

  FUNC0( (pLevel->nRight>0)==(pMerge!=0) );
  if( pMerge ){
    int i;
    for(i=0; i<pLevel->nRight; i++){
      FUNC2(&pLevel->aRhs[i], p, &iOut, pRc);
    }
    FUNC0( pMerge->nInput==pLevel->nRight 
         || pMerge->nInput==pLevel->nRight+1 
    );
    FUNC3(p, iOut++, pMerge->nInput, pRc);
    FUNC3(p, iOut++, pMerge->nSkip, pRc);
    for(i=0; i<pMerge->nInput; i++){
      FUNC1(p, &iOut, pMerge->aInput[i].iPg, pRc);
      FUNC3(p, iOut++, pMerge->aInput[i].iCell, pRc);
    }
    FUNC1(p, &iOut, pMerge->splitkey.iPg, pRc);
    FUNC3(p, iOut++, pMerge->splitkey.iCell, pRc);
    FUNC1(p, &iOut, pMerge->iCurrentPtr, pRc);
  }

  *piOut = iOut;
}