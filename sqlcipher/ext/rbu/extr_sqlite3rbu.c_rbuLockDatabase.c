
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ rc; TYPE_1__* pTargetFd; } ;
typedef TYPE_3__ sqlite3rbu ;
struct TYPE_11__ {TYPE_2__* pMethods; } ;
typedef TYPE_4__ sqlite3_file ;
struct TYPE_9__ {scalar_t__ (* xLock ) (TYPE_4__*,int ) ;} ;
struct TYPE_8__ {TYPE_4__* pReal; } ;


 int SQLITE_LOCK_EXCLUSIVE ;
 int SQLITE_LOCK_SHARED ;
 scalar_t__ SQLITE_OK ;
 int assert (int) ;
 scalar_t__ stub1 (TYPE_4__*,int ) ;
 scalar_t__ stub2 (TYPE_4__*,int ) ;

__attribute__((used)) static void rbuLockDatabase(sqlite3rbu *p){
  sqlite3_file *pReal = p->pTargetFd->pReal;
  assert( p->rc==SQLITE_OK );
  p->rc = pReal->pMethods->xLock(pReal, SQLITE_LOCK_SHARED);
  if( p->rc==SQLITE_OK ){
    p->rc = pReal->pMethods->xLock(pReal, SQLITE_LOCK_EXCLUSIVE);
  }
}
