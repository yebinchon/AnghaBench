#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  oldcksum1; int /*<<< orphan*/  oldcksum0; int /*<<< orphan*/  iOldLog; } ;
struct TYPE_7__ {TYPE_2__* pShmhdr; TYPE_1__ treehdr; } ;
typedef  TYPE_3__ lsm_db ;
typedef  int /*<<< orphan*/  i64 ;
struct TYPE_6__ {int /*<<< orphan*/ * aSnap2; } ;
typedef  int /*<<< orphan*/  CkptBuffer ;

/* Variables and functions */
 int CKPT_HDR_LO_CKSUM2 ; 
 int CKPT_HDR_LO_MSW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC3(
  lsm_db *pDb, 
  int bFlush,
  CkptBuffer *p, 
  int *piOut, 
  int *pRc
){
  int iOut = *piOut;

  FUNC0( iOut==CKPT_HDR_LO_MSW );

  if( bFlush ){
    i64 iOff = pDb->treehdr.iOldLog;
    FUNC1(p, &iOut, iOff, pRc);
    FUNC2(p, iOut++, pDb->treehdr.oldcksum0, pRc);
    FUNC2(p, iOut++, pDb->treehdr.oldcksum1, pRc);
  }else{
    for(; iOut<=CKPT_HDR_LO_CKSUM2; iOut++){
      FUNC2(p, iOut, pDb->pShmhdr->aSnap2[iOut], pRc);
    }
  }

  FUNC0( *pRc || iOut==CKPT_HDR_LO_CKSUM2+1 );
  *piOut = iOut;
}