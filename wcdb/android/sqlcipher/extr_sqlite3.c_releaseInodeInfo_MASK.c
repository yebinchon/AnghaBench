#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ nRef; scalar_t__ pShmNode; int /*<<< orphan*/  pLockMutex; struct TYPE_9__* pPrev; struct TYPE_9__* pNext; } ;
typedef  TYPE_1__ unixInodeInfo ;
struct TYPE_10__ {TYPE_1__* pInode; } ;
typedef  TYPE_2__ unixFile ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_1__* inodeList ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*) ; 
 int FUNC8 () ; 

__attribute__((used)) static void FUNC9(unixFile *pFile){
  unixInodeInfo *pInode = pFile->pInode;
  FUNC1( FUNC8() );
  FUNC1( FUNC7(pFile) );
  if( FUNC0(pInode) ){
    pInode->nRef--;
    if( pInode->nRef==0 ){
      FUNC1( pInode->pShmNode==0 );
      FUNC4(pInode->pLockMutex);
      FUNC2(pFile);
      FUNC6(pInode->pLockMutex);
      if( pInode->pPrev ){
        FUNC1( pInode->pPrev->pNext==pInode );
        pInode->pPrev->pNext = pInode->pNext;
      }else{
        FUNC1( inodeList==pInode );
        inodeList = pInode->pNext;
      }
      if( pInode->pNext ){
        FUNC1( pInode->pNext->pPrev==pInode );
        pInode->pNext->pPrev = pInode->pPrev;
      }
      FUNC5(pInode->pLockMutex);
      FUNC3(pInode);
    }
  }
}