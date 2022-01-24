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
struct TYPE_7__ {TYPE_2__* pShmhdr; TYPE_1__* pClient; int /*<<< orphan*/  aSnapshot; } ;
typedef  TYPE_3__ lsm_db ;
struct TYPE_6__ {int /*<<< orphan*/  aSnap2; int /*<<< orphan*/  aSnap1; } ;
struct TYPE_5__ {scalar_t__ iId; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(lsm_db *pDb){
  return ( pDb->pClient 
        && pDb->pClient->iId==FUNC0(pDb->aSnapshot, 0)
        && pDb->pClient->iId==FUNC0(pDb->pShmhdr->aSnap1, 0)
        && pDb->pClient->iId==FUNC0(pDb->pShmhdr->aSnap2, 0)
  );
}