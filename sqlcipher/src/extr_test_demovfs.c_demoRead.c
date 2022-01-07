
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_file ;
typedef int off_t ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ DemoFile ;


 int SEEK_SET ;
 int SQLITE_IOERR_READ ;
 int SQLITE_IOERR_SHORT_READ ;
 int SQLITE_OK ;
 int demoFlushBuffer (TYPE_1__*) ;
 int lseek (int ,int ,int ) ;
 int read (int ,void*,int) ;

__attribute__((used)) static int demoRead(
  sqlite3_file *pFile,
  void *zBuf,
  int iAmt,
  sqlite_int64 iOfst
){
  DemoFile *p = (DemoFile*)pFile;
  off_t ofst;
  int nRead;
  int rc;







  rc = demoFlushBuffer(p);
  if( rc!=SQLITE_OK ){
    return rc;
  }

  ofst = lseek(p->fd, iOfst, SEEK_SET);
  if( ofst!=iOfst ){
    return SQLITE_IOERR_READ;
  }
  nRead = read(p->fd, zBuf, iAmt);

  if( nRead==iAmt ){
    return SQLITE_OK;
  }else if( nRead>=0 ){
    return SQLITE_IOERR_SHORT_READ;
  }

  return SQLITE_IOERR_READ;
}
