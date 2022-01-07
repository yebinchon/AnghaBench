
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {int sz; } ;
struct TYPE_9__ {TYPE_2__ lookaside; int mutex; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_7__ {int (* xSize ) (void*) ;} ;
struct TYPE_10__ {TYPE_1__ m; } ;


 int MEMTYPE_HEAP ;
 int MEMTYPE_LOOKASIDE ;
 int assert (int) ;
 int isLookaside (TYPE_3__*,void*) ;
 TYPE_4__ sqlite3GlobalConfig ;
 int sqlite3MemdebugHasType (void*,int) ;
 int sqlite3MemdebugNoType (void*,int ) ;
 int sqlite3_mutex_held (int ) ;
 int stub1 (void*) ;

int sqlite3DbMallocSize(sqlite3 *db, void *p){
  assert( p!=0 );
  if( db==0 || !isLookaside(db,p) ){
    return sqlite3GlobalConfig.m.xSize(p);
  }else{
    assert( sqlite3_mutex_held(db->mutex) );
    return db->lookaside.sz;
  }
}
