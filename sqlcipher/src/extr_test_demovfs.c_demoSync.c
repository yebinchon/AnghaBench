
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ DemoFile ;


 int SQLITE_IOERR_FSYNC ;
 int SQLITE_OK ;
 int demoFlushBuffer (TYPE_1__*) ;
 int fsync (int ) ;

__attribute__((used)) static int demoSync(sqlite3_file *pFile, int flags){
  DemoFile *p = (DemoFile*)pFile;
  int rc;

  rc = demoFlushBuffer(p);
  if( rc!=SQLITE_OK ){
    return rc;
  }

  rc = fsync(p->fd);
  return (rc==0 ? SQLITE_OK : SQLITE_IOERR_FSYNC);
}
