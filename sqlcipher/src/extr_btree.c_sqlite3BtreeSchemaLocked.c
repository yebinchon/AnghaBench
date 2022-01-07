
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* db; } ;
struct TYPE_7__ {int mutex; } ;
typedef TYPE_2__ Btree ;


 int MASTER_ROOT ;
 int READ_LOCK ;
 int SQLITE_LOCKED_SHAREDCACHE ;
 int SQLITE_OK ;
 int assert (int) ;
 int querySharedCacheTableLock (TYPE_2__*,int ,int ) ;
 int sqlite3BtreeEnter (TYPE_2__*) ;
 int sqlite3BtreeLeave (TYPE_2__*) ;
 int sqlite3_mutex_held (int ) ;

int sqlite3BtreeSchemaLocked(Btree *p){
  int rc;
  assert( sqlite3_mutex_held(p->db->mutex) );
  sqlite3BtreeEnter(p);
  rc = querySharedCacheTableLock(p, MASTER_ROOT, READ_LOCK);
  assert( rc==SQLITE_OK || rc==SQLITE_LOCKED_SHAREDCACHE );
  sqlite3BtreeLeave(p);
  return rc;
}
