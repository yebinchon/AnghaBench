
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pMethods; } ;
typedef TYPE_2__ sqlite3_file ;
struct TYPE_9__ {int db; scalar_t__ bWal; } ;
struct TYPE_7__ {int (* xShmLock ) (TYPE_2__*,int,int,int) ;} ;
typedef TYPE_3__ Superlock ;


 int SQLITE_FCNTL_FILE_POINTER ;
 int SQLITE_OK ;
 int SQLITE_SHM_EXCLUSIVE ;
 int SQLITE_SHM_NLOCK ;
 int SQLITE_SHM_UNLOCK ;
 int sqlite3_close (int ) ;
 int sqlite3_file_control (int ,char*,int ,void*) ;
 int sqlite3_free (TYPE_3__*) ;
 int stub1 (TYPE_2__*,int,int,int) ;
 int stub2 (TYPE_2__*,int,int,int) ;

void sqlite3demo_superunlock(void *pLock){
  Superlock *p = (Superlock *)pLock;
  if( p->bWal ){
    int rc;
    int flags = SQLITE_SHM_UNLOCK | SQLITE_SHM_EXCLUSIVE;
    sqlite3_file *fd = 0;
    rc = sqlite3_file_control(p->db, "main", SQLITE_FCNTL_FILE_POINTER, (void *)&fd);
    if( rc==SQLITE_OK ){
      fd->pMethods->xShmLock(fd, 2, 1, flags);
      fd->pMethods->xShmLock(fd, 3, SQLITE_SHM_NLOCK-3, flags);
    }
  }
  sqlite3_close(p->db);
  sqlite3_free(p);
}
