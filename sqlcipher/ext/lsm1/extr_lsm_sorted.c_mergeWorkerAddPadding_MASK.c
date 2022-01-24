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
struct TYPE_7__ {TYPE_2__* pLevel; TYPE_1__* pDb; } ;
struct TYPE_6__ {int /*<<< orphan*/  lhs; } ;
struct TYPE_5__ {int /*<<< orphan*/  pWorker; int /*<<< orphan*/ * pFS; } ;
typedef  TYPE_3__ MergeWorker ;
typedef  int /*<<< orphan*/  FileSystem ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(
  MergeWorker *pMW                /* Merge worker object */
){
  FileSystem *pFS = pMW->pDb->pFS;
  return FUNC0(pFS, pMW->pDb->pWorker, &pMW->pLevel->lhs);
}