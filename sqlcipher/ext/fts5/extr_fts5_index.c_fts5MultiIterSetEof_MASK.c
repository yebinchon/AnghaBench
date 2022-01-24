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
struct TYPE_7__ {int bEof; } ;
struct TYPE_9__ {int /*<<< orphan*/  iSwitchRowid; TYPE_2__ base; TYPE_1__* aFirst; TYPE_3__* aSeg; } ;
struct TYPE_8__ {scalar_t__ pLeaf; int /*<<< orphan*/  iRowid; } ;
struct TYPE_6__ {size_t iFirst; } ;
typedef  TYPE_3__ Fts5SegIter ;
typedef  TYPE_4__ Fts5Iter ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(Fts5Iter *pIter){
  Fts5SegIter *pSeg = &pIter->aSeg[ pIter->aFirst[1].iFirst ];
  pIter->base.bEof = pSeg->pLeaf==0;
  pIter->iSwitchRowid = pSeg->iRowid;
}