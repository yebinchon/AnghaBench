
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ sqlite_int64 ;
typedef scalar_t__ off_t ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ DemoFile ;


 int SEEK_SET ;
 int SQLITE_IOERR_WRITE ;
 int SQLITE_OK ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 size_t write (int ,void const*,int) ;

__attribute__((used)) static int demoDirectWrite(
  DemoFile *p,
  const void *zBuf,
  int iAmt,
  sqlite_int64 iOfst
){
  off_t ofst;
  size_t nWrite;

  ofst = lseek(p->fd, iOfst, SEEK_SET);
  if( ofst!=iOfst ){
    return SQLITE_IOERR_WRITE;
  }

  nWrite = write(p->fd, zBuf, iAmt);
  if( nWrite!=iAmt ){
    return SQLITE_IOERR_WRITE;
  }

  return SQLITE_OK;
}
