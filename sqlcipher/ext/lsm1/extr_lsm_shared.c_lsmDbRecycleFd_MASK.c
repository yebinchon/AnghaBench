#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  pEnv; TYPE_3__* pDatabase; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_8__ {int /*<<< orphan*/  pClientMutex; TYPE_2__* pLsmFile; } ;
struct TYPE_7__ {struct TYPE_7__* pNext; } ;
typedef  TYPE_2__ LsmFile ;
typedef  TYPE_3__ Database ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

LsmFile *FUNC2(lsm_db *db){
  LsmFile *pRet;
  Database *p = db->pDatabase;
  FUNC0(db->pEnv, p->pClientMutex);
  if( (pRet = p->pLsmFile)!=0 ){
    p->pLsmFile = pRet->pNext;
  }
  FUNC1(db->pEnv, p->pClientMutex);
  return pRet;
}