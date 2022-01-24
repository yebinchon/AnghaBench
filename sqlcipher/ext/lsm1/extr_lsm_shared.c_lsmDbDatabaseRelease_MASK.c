#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  pEnv; struct TYPE_10__* pNext; int /*<<< orphan*/  pFS; scalar_t__ pShmhdr; TYPE_3__* pDatabase; } ;
typedef  TYPE_1__ lsm_db ;
struct TYPE_13__ {TYPE_3__* pDatabase; } ;
struct TYPE_12__ {scalar_t__ nDbRef; scalar_t__ bMultiProc; int nShmChunk; TYPE_2__* pLsmFile; TYPE_2__** apShmChunk; struct TYPE_12__* pDbNext; int /*<<< orphan*/  pClientMutex; TYPE_1__* pConn; } ;
struct TYPE_11__ {int /*<<< orphan*/  pFile; struct TYPE_11__* pNext; } ;
typedef  TYPE_2__ LsmFile ;
typedef  TYPE_3__ Database ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_6__ gShared ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(lsm_db *pDb){
  Database *p = pDb->pDatabase;
  if( p ){
    lsm_db **ppDb;

    if( pDb->pShmhdr ){
      FUNC1(pDb);
    }

    FUNC7(pDb->pFS);
    FUNC8(pDb->pEnv, p->pClientMutex);
    for(ppDb=&p->pConn; *ppDb!=pDb; ppDb=&((*ppDb)->pNext));
    *ppDb = pDb->pNext;
    FUNC0(pDb);
    FUNC9(pDb->pEnv, p->pClientMutex);

    FUNC2(pDb->pEnv);
    p->nDbRef--;
    if( p->nDbRef==0 ){
      LsmFile *pIter;
      LsmFile *pNext;
      Database **pp;

      /* Remove the Database structure from the linked list. */
      for(pp=&gShared.pDatabase; *pp!=p; pp=&((*pp)->pDbNext));
      *pp = p->pDbNext;

      /* If they were allocated from the heap, free the shared memory chunks */
      if( p->bMultiProc==0 ){
        int i;
        for(i=0; i<p->nShmChunk; i++){
          FUNC6(pDb->pEnv, p->apShmChunk[i]);
        }
      }

      /* Close any outstanding file descriptors */
      for(pIter=p->pLsmFile; pIter; pIter=pNext){
        pNext = pIter->pNext;
        FUNC5(pDb->pEnv, pIter->pFile);
        FUNC6(pDb->pEnv, pIter);
      }
      FUNC3(pDb->pEnv, p);
    }
    FUNC4(pDb->pEnv);
  }
}