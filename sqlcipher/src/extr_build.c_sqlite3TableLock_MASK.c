#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_12__ {int iDb; int iTab; int isWriteLock; char const* zLockName; } ;
typedef  TYPE_2__ TableLock ;
struct TYPE_14__ {TYPE_1__* aDb; } ;
struct TYPE_13__ {int nTableLock; TYPE_7__* db; TYPE_2__* aTableLock; } ;
struct TYPE_11__ {int /*<<< orphan*/  pBt; } ;
typedef  TYPE_3__ Parse ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_7__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*) ; 
 TYPE_3__* FUNC4 (TYPE_3__*) ; 

void FUNC5(
  Parse *pParse,     /* Parsing context */
  int iDb,           /* Index of the database containing the table to lock */
  int iTab,          /* Root page number of the table to be locked */
  u8 isWriteLock,    /* True for a write lock */
  const char *zName  /* Name of the table to be locked */
){
  Parse *pToplevel = FUNC4(pParse);
  int i;
  int nBytes;
  TableLock *p;
  FUNC0( iDb>=0 );

  if( iDb==1 ) return;
  if( !FUNC1(pParse->db->aDb[iDb].pBt) ) return;
  for(i=0; i<pToplevel->nTableLock; i++){
    p = &pToplevel->aTableLock[i];
    if( p->iDb==iDb && p->iTab==iTab ){
      p->isWriteLock = (p->isWriteLock || isWriteLock);
      return;
    }
  }

  nBytes = sizeof(TableLock) * (pToplevel->nTableLock+1);
  pToplevel->aTableLock =
      FUNC2(pToplevel->db, pToplevel->aTableLock, nBytes);
  if( pToplevel->aTableLock ){
    p = &pToplevel->aTableLock[pToplevel->nTableLock++];
    p->iDb = iDb;
    p->iTab = iTab;
    p->isWriteLock = isWriteLock;
    p->zLockName = zName;
  }else{
    pToplevel->nTableLock = 0;
    FUNC3(pToplevel->db);
  }
}