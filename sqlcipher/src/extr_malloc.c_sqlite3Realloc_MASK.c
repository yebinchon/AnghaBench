#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct TYPE_6__ {int alarmThreshold; int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {int (* xRoundup ) (int) ;void* (* xRealloc ) (void*,int) ;} ;
struct TYPE_5__ {TYPE_1__ m; scalar_t__ bMemstat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ MEMTYPE_HEAP ; 
 int /*<<< orphan*/  SQLITE_STATUS_MALLOC_SIZE ; 
 int /*<<< orphan*/  SQLITE_STATUS_MEMORY_USED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__ mem0 ; 
 TYPE_2__ sqlite3GlobalConfig ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int) ; 
 void* FUNC14 (void*,int) ; 
 void* FUNC15 (void*,int) ; 
 void* FUNC16 (void*,int) ; 

void *FUNC17(void *pOld, u64 nBytes){
  int nOld, nNew, nDiff;
  void *pNew;
  FUNC1( FUNC5(pOld, MEMTYPE_HEAP) );
  FUNC1( FUNC6(pOld, (u8)~MEMTYPE_HEAP) );
  if( pOld==0 ){
    return FUNC2(nBytes); /* IMP: R-04300-56712 */
  }
  if( nBytes==0 ){
    FUNC10(pOld); /* IMP: R-26507-47431 */
    return 0;
  }
  if( nBytes>=0x7fffff00 ){
    /* The 0x7ffff00 limit term is explained in comments on sqlite3Malloc() */
    return 0;
  }
  nOld = FUNC4(pOld);
  /* IMPLEMENTATION-OF: R-46199-30249 SQLite guarantees that the second
  ** argument to xRealloc is always a value returned by a prior call to
  ** xRoundup. */
  nNew = sqlite3GlobalConfig.m.xRoundup((int)nBytes);
  if( nOld==nNew ){
    pNew = pOld;
  }else if( sqlite3GlobalConfig.bMemstat ){
    FUNC11(mem0.mutex);
    FUNC7(SQLITE_STATUS_MALLOC_SIZE, (int)nBytes);
    nDiff = nNew - nOld;
    if( nDiff>0 && FUNC9(SQLITE_STATUS_MEMORY_USED) >= 
          mem0.alarmThreshold-nDiff ){
      FUNC3(nDiff);
    }
    pNew = sqlite3GlobalConfig.m.xRealloc(pOld, nNew);
    if( pNew==0 && mem0.alarmThreshold>0 ){
      FUNC3((int)nBytes);
      pNew = sqlite3GlobalConfig.m.xRealloc(pOld, nNew);
    }
    if( pNew ){
      nNew = FUNC4(pNew);
      FUNC8(SQLITE_STATUS_MEMORY_USED, nNew-nOld);
    }
    FUNC12(mem0.mutex);
  }else{
    pNew = sqlite3GlobalConfig.m.xRealloc(pOld, nNew);
  }
  FUNC1( FUNC0(pNew) ); /* IMP: R-11148-40995 */
  return pNew;
}