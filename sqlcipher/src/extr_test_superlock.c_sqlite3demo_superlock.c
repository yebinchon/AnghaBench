
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int db; scalar_t__ bWal; } ;
struct TYPE_8__ {int (* xBusy ) (void*,int) ;void* pBusyArg; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ SuperlockBusy ;
typedef TYPE_2__ Superlock ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_OPEN_CREATE ;
 int SQLITE_OPEN_READWRITE ;
 int memset (TYPE_2__*,int ,int) ;
 int sqlite3_busy_handler (int ,int ,void*) ;
 int sqlite3_exec (int ,char*,int ,int ,int ) ;
 TYPE_2__* sqlite3_malloc (int) ;
 int sqlite3_open_v2 (char const*,int *,int,char const*) ;
 int sqlite3demo_superunlock (TYPE_2__*) ;
 int superlockBusyHandler ;
 int superlockIsWal (TYPE_2__*) ;
 int superlockWalLock (int ,TYPE_1__*) ;

int sqlite3demo_superlock(
  const char *zPath,
  const char *zVfs,
  int (*xBusy)(void*,int),
  void *pBusyArg,
  void **ppLock
){
  SuperlockBusy busy = {0, 0, 0};
  int rc;
  Superlock *pLock;

  pLock = sqlite3_malloc(sizeof(Superlock));
  if( !pLock ) return SQLITE_NOMEM;
  memset(pLock, 0, sizeof(Superlock));


  rc = sqlite3_open_v2(
      zPath, &pLock->db, SQLITE_OPEN_READWRITE|SQLITE_OPEN_CREATE, zVfs
  );
  if( rc==SQLITE_OK ){
    busy.xBusy = xBusy;
    busy.pBusyArg = pBusyArg;
    sqlite3_busy_handler(pLock->db, superlockBusyHandler, (void *)&busy);
    rc = sqlite3_exec(pLock->db, "BEGIN EXCLUSIVE", 0, 0, 0);
  }
  if( rc==SQLITE_OK ){
    if( SQLITE_OK==(rc = superlockIsWal(pLock)) && pLock->bWal ){
      rc = sqlite3_exec(pLock->db, "COMMIT", 0, 0, 0);
      if( rc==SQLITE_OK ){
        rc = superlockWalLock(pLock->db, &busy);
      }
    }
  }

  if( rc!=SQLITE_OK ){
    sqlite3demo_superunlock(pLock);
    *ppLock = 0;
  }else{
    *ppLock = pLock;
  }

  return rc;
}
