#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
typedef  int sqlite3_int64 ;
struct TYPE_7__ {int bMalloced; int nSlot; int bDisable; TYPE_2__* pEnd; TYPE_2__* pStart; TYPE_2__* pInit; scalar_t__ sz; scalar_t__ pFree; } ;
struct TYPE_8__ {TYPE_1__ lookaside; struct TYPE_8__* pNext; } ;
typedef  TYPE_2__ sqlite3 ;
typedef  TYPE_2__ LookasideSlot ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int SQLITE_BUSY ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 
 int FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(sqlite3 *db, void *pBuf, int sz, int cnt){
#ifndef SQLITE_OMIT_LOOKASIDE
  void *pStart;
  
  if( FUNC4(db,0)>0 ){
    return SQLITE_BUSY;
  }
  /* Free any existing lookaside buffer for this handle before
  ** allocating a new one so we don't have to have space for 
  ** both at the same time.
  */
  if( db->lookaside.bMalloced ){
    FUNC7(db->lookaside.pStart);
  }
  /* The size of a lookaside slot after ROUNDDOWN8 needs to be larger
  ** than a pointer to be useful.
  */
  sz = FUNC0(sz);  /* IMP: R-33038-09382 */
  if( sz<=(int)sizeof(LookasideSlot*) ) sz = 0;
  if( cnt<0 ) cnt = 0;
  if( sz==0 || cnt==0 ){
    sz = 0;
    pStart = 0;
  }else if( pBuf==0 ){
    FUNC2();
    pStart = FUNC5( sz*(sqlite3_int64)cnt );  /* IMP: R-61949-35727 */
    FUNC3();
    if( pStart ) cnt = FUNC6(pStart)/sz;
  }else{
    pStart = pBuf;
  }
  db->lookaside.pStart = pStart;
  db->lookaside.pInit = 0;
  db->lookaside.pFree = 0;
  db->lookaside.sz = (u16)sz;
  if( pStart ){
    int i;
    LookasideSlot *p;
    FUNC1( sz > (int)sizeof(LookasideSlot*) );
    db->lookaside.nSlot = cnt;
    p = (LookasideSlot*)pStart;
    for(i=cnt-1; i>=0; i--){
      p->pNext = db->lookaside.pInit;
      db->lookaside.pInit = p;
      p = (LookasideSlot*)&((u8*)p)[sz];
    }
    db->lookaside.pEnd = p;
    db->lookaside.bDisable = 0;
    db->lookaside.bMalloced = pBuf==0 ?1:0;
  }else{
    db->lookaside.pStart = db;
    db->lookaside.pEnd = db;
    db->lookaside.bDisable = 1;
    db->lookaside.bMalloced = 0;
    db->lookaside.nSlot = 0;
  }
#endif /* SQLITE_OMIT_LOOKASIDE */
  return SQLITE_OK;
}