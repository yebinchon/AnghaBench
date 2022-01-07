
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_size; } ;
typedef int sqlite_int64 ;
typedef int sqlite3_file ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ DemoFile ;


 int SQLITE_IOERR_FSTAT ;
 int SQLITE_OK ;
 int demoFlushBuffer (TYPE_1__*) ;
 int fstat (int ,struct stat*) ;

__attribute__((used)) static int demoFileSize(sqlite3_file *pFile, sqlite_int64 *pSize){
  DemoFile *p = (DemoFile*)pFile;
  int rc;
  struct stat sStat;






  rc = demoFlushBuffer(p);
  if( rc!=SQLITE_OK ){
    return rc;
  }

  rc = fstat(p->fd, &sStat);
  if( rc!=0 ) return SQLITE_IOERR_FSTAT;
  *pSize = sStat.st_size;
  return SQLITE_OK;
}
