#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/ * aSnapshot; TYPE_1__* pShmhdr; } ;
typedef  TYPE_2__ lsm_db ;
struct TYPE_4__ {int /*<<< orphan*/ * aSnap2; int /*<<< orphan*/ * aSnap1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(lsm_db *pDb, int iSnap){
  u32 *aShm;
  FUNC0( iSnap==1 || iSnap==2 );
  aShm = (iSnap==1) ? pDb->pShmhdr->aSnap1 : pDb->pShmhdr->aSnap2;
  return (FUNC1(pDb->aSnapshot, 0)==FUNC1(aShm, 0) );
}