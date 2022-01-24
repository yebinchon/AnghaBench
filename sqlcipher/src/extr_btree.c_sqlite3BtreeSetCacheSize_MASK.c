#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  pPager; } ;
struct TYPE_8__ {TYPE_1__* db; TYPE_3__* pBt; } ;
struct TYPE_7__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ Btree ;
typedef  TYPE_3__ BtShared ;

/* Variables and functions */
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(Btree *p, int mxPage){
  BtShared *pBt = p->pBt;
  FUNC0( FUNC4(p->db->mutex) );
  FUNC1(p);
  FUNC3(pBt->pPager, mxPage);
  FUNC2(p);
  return SQLITE_OK;
}