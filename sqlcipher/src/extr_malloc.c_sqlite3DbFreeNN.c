
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {TYPE_3__* pFree; int sz; } ;
struct TYPE_8__ {TYPE_1__ lookaside; scalar_t__ pnBytesFreed; int mutex; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_9__ {struct TYPE_9__* pNext; } ;
typedef TYPE_3__ LookasideSlot ;


 int MEMTYPE_HEAP ;
 int MEMTYPE_LOOKASIDE ;
 int assert (int) ;
 scalar_t__ isLookaside (TYPE_2__*,void*) ;
 int measureAllocationSize (TYPE_2__*,void*) ;
 int memset (void*,int,int ) ;
 int sqlite3MemdebugHasType (void*,int) ;
 int sqlite3MemdebugNoType (void*,int) ;
 int sqlite3MemdebugSetType (void*,int) ;
 int sqlite3_free (void*) ;
 scalar_t__ sqlite3_mutex_held (int ) ;

void sqlite3DbFreeNN(sqlite3 *db, void *p){
  assert( db==0 || sqlite3_mutex_held(db->mutex) );
  assert( p!=0 );
  if( db ){
    if( db->pnBytesFreed ){
      measureAllocationSize(db, p);
      return;
    }
    if( isLookaside(db, p) ){
      LookasideSlot *pBuf = (LookasideSlot*)p;




      pBuf->pNext = db->lookaside.pFree;
      db->lookaside.pFree = pBuf;
      return;
    }
  }
  assert( sqlite3MemdebugHasType(p, (MEMTYPE_LOOKASIDE|MEMTYPE_HEAP)) );
  assert( sqlite3MemdebugNoType(p, (u8)~(MEMTYPE_LOOKASIDE|MEMTYPE_HEAP)) );
  assert( db!=0 || sqlite3MemdebugNoType(p, MEMTYPE_LOOKASIDE) );
  sqlite3MemdebugSetType(p, MEMTYPE_HEAP);
  sqlite3_free(p);
}
