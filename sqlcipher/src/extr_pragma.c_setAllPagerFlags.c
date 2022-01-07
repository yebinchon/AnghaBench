
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nDb; int flags; TYPE_2__* aDb; scalar_t__ autoCommit; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_5__ {int safety_level; scalar_t__ pBt; } ;
typedef TYPE_2__ Db ;


 int PAGER_CACHESPILL ;
 int PAGER_CKPT_FULLFSYNC ;
 int PAGER_FLAGS_MASK ;
 int PAGER_FULLFSYNC ;
 int PAGER_SYNCHRONOUS_MASK ;
 int SQLITE_CacheSpill ;
 int SQLITE_CkptFullFSync ;
 int SQLITE_FullFSync ;
 int assert (int) ;
 int sqlite3BtreeSetPagerFlags (scalar_t__,int) ;

__attribute__((used)) static void setAllPagerFlags(sqlite3 *db){
  if( db->autoCommit ){
    Db *pDb = db->aDb;
    int n = db->nDb;
    assert( SQLITE_FullFSync==PAGER_FULLFSYNC );
    assert( SQLITE_CkptFullFSync==PAGER_CKPT_FULLFSYNC );
    assert( SQLITE_CacheSpill==PAGER_CACHESPILL );
    assert( (PAGER_FULLFSYNC | PAGER_CKPT_FULLFSYNC | PAGER_CACHESPILL)
             == PAGER_FLAGS_MASK );
    assert( (pDb->safety_level & PAGER_SYNCHRONOUS_MASK)==pDb->safety_level );
    while( (n--) > 0 ){
      if( pDb->pBt ){
        sqlite3BtreeSetPagerFlags(pDb->pBt,
                 pDb->safety_level | (db->flags & PAGER_FLAGS_MASK) );
      }
      pDb++;
    }
  }
}
