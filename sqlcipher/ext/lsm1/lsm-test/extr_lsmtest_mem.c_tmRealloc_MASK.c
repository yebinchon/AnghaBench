#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  TmGlobal ;
struct TYPE_2__ {int /*<<< orphan*/  nByte; } ;
typedef  TYPE_1__ TmBlockHdr ;

/* Variables and functions */
 int /*<<< orphan*/ * BLOCK_HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void *FUNC4(TmGlobal *pTm, void *p, int nByte){
  void *pNew;

  pNew = FUNC3(pTm, nByte);
  if( pNew && p ){
    TmBlockHdr *pHdr;
    u8 *pUser = (u8 *)p;
    pHdr = (TmBlockHdr *)(pUser - BLOCK_HDR_SIZE);
    FUNC1(pNew, p, FUNC0(nByte, pHdr->nByte));
    FUNC2(pTm, p);
  }
  return pNew;
}