
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
typedef int sqlite3 ;
struct TYPE_5__ {int (* xShmMap ) (TYPE_2__*,int ,int,int,void volatile**) ;} ;
typedef int SuperlockBusy ;


 int SQLITE_FCNTL_FILE_POINTER ;
 int SQLITE_OK ;
 int SQLITE_SHM_NLOCK ;
 int memset (void*,int ,int) ;
 int sqlite3_file_control (int *,char*,int ,void*) ;
 int stub1 (TYPE_2__*,int ,int,int,void volatile**) ;
 int superlockShmLock (TYPE_2__*,int,int,int *) ;

__attribute__((used)) static int superlockWalLock(
  sqlite3 *db,
  SuperlockBusy *pBusy
){
  int rc;
  sqlite3_file *fd = 0;
  void volatile *p = 0;


  rc = sqlite3_file_control(db, "main", SQLITE_FCNTL_FILE_POINTER, (void *)&fd);
  if( rc!=SQLITE_OK ) return rc;




  rc = superlockShmLock(fd, 2, 1, pBusy);
  if( rc!=SQLITE_OK ) return rc;
  rc = fd->pMethods->xShmMap(fd, 0, 32*1024, 1, &p);
  if( rc!=SQLITE_OK ) return rc;
  memset((void *)p, 0, 32);





  rc = superlockShmLock(fd, 3, SQLITE_SHM_NLOCK-3, pBusy);
  return rc;
}
