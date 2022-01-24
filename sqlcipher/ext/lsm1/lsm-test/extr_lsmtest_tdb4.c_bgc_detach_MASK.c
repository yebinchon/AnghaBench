#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ nRef; int bDoWork; int /*<<< orphan*/  spec; int /*<<< orphan*/  file; int /*<<< orphan*/  ckpter_mutex; int /*<<< orphan*/  ckpter_cond; int /*<<< orphan*/  ckpter_thread; struct TYPE_6__* pNext; } ;
typedef  TYPE_1__ bt_ckpter ;
struct TYPE_8__ {TYPE_1__* pCkpter; } ;
struct TYPE_7__ {TYPE_1__* pCkpter; int /*<<< orphan*/  pEnv; } ;
typedef  TYPE_2__ BtDb ;

/* Variables and functions */
 int /*<<< orphan*/  SQLITE4_MUTEX_STATIC_KV ; 
 int SQLITE4_OK ; 
 TYPE_4__ gBgc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(BtDb *pDb){
  int rc = SQLITE4_OK;
  bt_ckpter *pCkpter = pDb->pCkpter;
  if( pCkpter ){
    int bShutdown = 0;            /* True if this is the last reference */

    FUNC8(FUNC7(pDb->pEnv,SQLITE4_MUTEX_STATIC_KV));
    pCkpter->nRef--;
    if( pCkpter->nRef==0 ){
      bt_ckpter **pp;

      *pp = pCkpter->pNext;
      for(pp=&gBgc.pCkpter; *pp!=pCkpter; pp=&((*pp)->pNext));
      bShutdown = 1;
    }
    FUNC9(FUNC7(pDb->pEnv,SQLITE4_MUTEX_STATIC_KV));

    if( bShutdown ){
      void *pDummy;

      /* Signal the checkpointer thread. */
      FUNC4(&pCkpter->ckpter_mutex);
      pCkpter->bDoWork = 1;
      FUNC1(&pCkpter->ckpter_cond);
      FUNC5(&pCkpter->ckpter_mutex);

      /* Join the checkpointer thread. */
      FUNC2(pCkpter->ckpter_thread, &pDummy);
      FUNC0(&pCkpter->ckpter_cond);
      FUNC3(&pCkpter->ckpter_mutex);

      FUNC6(&pCkpter->file);
      FUNC6(&pCkpter->spec);
      FUNC10(pCkpter);
    }

    pDb->pCkpter = 0;
  }
  return rc;
}