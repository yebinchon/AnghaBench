
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_7__ {scalar_t__ sz; } ;
struct TYPE_8__ {TYPE_1__ lookaside; int mutex; } ;
typedef TYPE_2__ sqlite3 ;


 int assert (int) ;
 void* dbReallocFinish (TYPE_2__*,void*,scalar_t__) ;
 scalar_t__ isLookaside (TYPE_2__*,void*) ;
 void* sqlite3DbMallocRawNN (TYPE_2__*,scalar_t__) ;
 int sqlite3_mutex_held (int ) ;

void *sqlite3DbRealloc(sqlite3 *db, void *p, u64 n){
  assert( db!=0 );
  if( p==0 ) return sqlite3DbMallocRawNN(db, n);
  assert( sqlite3_mutex_held(db->mutex) );
  if( isLookaside(db,p) && n<=db->lookaside.sz ) return p;
  return dbReallocFinish(db, p, n);
}
