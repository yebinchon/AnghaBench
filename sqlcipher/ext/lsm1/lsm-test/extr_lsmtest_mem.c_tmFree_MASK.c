#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ iForeGuard; size_t nByte; TYPE_1__* pAgg; struct TYPE_13__* pPrev; struct TYPE_13__* pNext; } ;
typedef  TYPE_2__ u8 ;
struct TYPE_14__ {int /*<<< orphan*/  (* xFree ) (TYPE_2__*) ;TYPE_2__* pFirst; } ;
typedef  TYPE_3__ TmGlobal ;
typedef  TYPE_2__ TmBlockHdr ;
struct TYPE_12__ {size_t nOutByte; int /*<<< orphan*/  nOutAlloc; } ;

/* Variables and functions */
 TYPE_2__* BLOCK_HDR_SIZE ; 
 scalar_t__ FOREGUARD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  rearguard ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(TmGlobal *pTm, void *p){
  if( p ){
    TmBlockHdr *pHdr;
    u8 *pUser = (u8 *)p;

    FUNC4(pTm);
    pHdr = (TmBlockHdr *)(pUser - BLOCK_HDR_SIZE);
    FUNC0( pHdr->iForeGuard==FOREGUARD );
    FUNC0( 0==FUNC1(&pUser[pHdr->nByte], &rearguard, 4) );

    if( pHdr->pPrev ){
      FUNC0( pHdr->pPrev->pNext==pHdr );
      pHdr->pPrev->pNext = pHdr->pNext;
    }else{
      FUNC0( pHdr==pTm->pFirst );
      pTm->pFirst = pHdr->pNext;
    }
    if( pHdr->pNext ){
      FUNC0( pHdr->pNext->pPrev==pHdr );
      pHdr->pNext->pPrev = pHdr->pPrev;
    }

#ifdef TM_BACKTRACE
    pHdr->pAgg->nOutAlloc--;
    pHdr->pAgg->nOutByte -= pHdr->nByte;
#endif

    FUNC5(pTm);
    FUNC2(pUser, 0x58, pHdr->nByte);
    FUNC2(pHdr, 0x57, sizeof(TmBlockHdr));
    pTm->xFree(pHdr);
  }
}