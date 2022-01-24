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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  aCksum; } ;
struct TYPE_8__ {TYPE_2__ treehdr; TYPE_1__* pShmhdr; } ;
typedef  TYPE_3__ lsm_db ;
struct TYPE_9__ {int /*<<< orphan*/  aCksum; } ;
typedef  TYPE_4__ TreeHeader ;
struct TYPE_6__ {TYPE_4__ hdr2; TYPE_4__ hdr1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC2(lsm_db *pDb, int iRead){
  TreeHeader *p = (iRead==1) ? &pDb->pShmhdr->hdr1 : &pDb->pShmhdr->hdr2;
  FUNC0( iRead==1 || iRead==2 );
  return (0==FUNC1(pDb->treehdr.aCksum, p->aCksum, sizeof(u32)*2));
}