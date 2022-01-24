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
typedef  int u8 ;
struct TYPE_7__ {TYPE_3__* pFree; int /*<<< orphan*/  sz; } ;
struct TYPE_8__ {TYPE_1__ lookaside; scalar_t__ pnBytesFreed; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ sqlite3 ;
struct TYPE_9__ {struct TYPE_9__* pNext; } ;
typedef  TYPE_3__ LookasideSlot ;

/* Variables and functions */
 int MEMTYPE_HEAP ; 
 int MEMTYPE_LOOKASIDE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (void*,int) ; 
 int FUNC5 (void*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(sqlite3 *db, void *p){
  FUNC0( db==0 || FUNC8(db->mutex) );
  FUNC0( p!=0 );
  if( db ){
    if( db->pnBytesFreed ){
      FUNC2(db, p);
      return;
    }
    if( FUNC1(db, p) ){
      LookasideSlot *pBuf = (LookasideSlot*)p;
#ifdef SQLITE_DEBUG
      /* Trash all content in the buffer being freed */
      memset(p, 0xaa, db->lookaside.sz);
#endif
      pBuf->pNext = db->lookaside.pFree;
      db->lookaside.pFree = pBuf;
      return;
    }
  }
  FUNC0( FUNC4(p, (MEMTYPE_LOOKASIDE|MEMTYPE_HEAP)) );
  FUNC0( FUNC5(p, (u8)~(MEMTYPE_LOOKASIDE|MEMTYPE_HEAP)) );
  FUNC0( db!=0 || FUNC5(p, MEMTYPE_LOOKASIDE) );
  FUNC6(p, MEMTYPE_HEAP);
  FUNC7(p);
}