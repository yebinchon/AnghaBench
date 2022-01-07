
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int syncFlags; int fd; int noSync; } ;
typedef TYPE_1__ Pager ;


 int MEMDB ;
 int SQLITE_FCNTL_SYNC ;
 int SQLITE_NOTFOUND ;
 int SQLITE_OK ;
 int assert (int) ;
 int sqlite3OsFileControl (int ,int ,void*) ;
 int sqlite3OsSync (int ,int ) ;

int sqlite3PagerSync(Pager *pPager, const char *zMaster){
  int rc = SQLITE_OK;
  void *pArg = (void*)zMaster;
  rc = sqlite3OsFileControl(pPager->fd, SQLITE_FCNTL_SYNC, pArg);
  if( rc==SQLITE_NOTFOUND ) rc = SQLITE_OK;
  if( rc==SQLITE_OK && !pPager->noSync ){
    assert( !MEMDB );
    rc = sqlite3OsSync(pPager->fd, pPager->syncFlags);
  }
  return rc;
}
