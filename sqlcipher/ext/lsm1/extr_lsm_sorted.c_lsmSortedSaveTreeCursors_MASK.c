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
struct TYPE_4__ {TYPE_2__* pCsr; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_5__ {int /*<<< orphan*/ * apTreeCsr; struct TYPE_5__* pNext; } ;
typedef  TYPE_2__ MultiCursor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(lsm_db *pDb){
  MultiCursor *pCsr;
  for(pCsr=pDb->pCsr; pCsr; pCsr=pCsr->pNext){
    FUNC0(pCsr->apTreeCsr[0]);
    FUNC0(pCsr->apTreeCsr[1]);
  }
}