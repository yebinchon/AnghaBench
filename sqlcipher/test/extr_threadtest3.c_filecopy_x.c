
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ i64 ;
typedef int aBuf ;
struct TYPE_6__ {scalar_t__ rc; } ;
typedef TYPE_1__ Error ;


 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_RDWR ;
 scalar_t__ SQLITE_OK ;
 int close (int) ;
 int errno ;
 scalar_t__ filesize_x (TYPE_1__*,char const*) ;
 int open (char const*,int,...) ;
 int read (int,char*,int) ;
 int sqlite3_mprintf (char*,char const*) ;
 int system_error (TYPE_1__*,int ) ;
 int test_error_x (TYPE_1__*,int ) ;
 int unlink (char const*) ;
 int write (int,char*,int) ;

__attribute__((used)) static void filecopy_x(
  Error *pErr,
  const char *zFrom,
  const char *zTo
){
  if( pErr->rc==SQLITE_OK ){
    i64 nByte = filesize_x(pErr, zFrom);
    if( nByte<0 ){
      test_error_x(pErr, sqlite3_mprintf("no such file: %s", zFrom));
    }else{
      i64 iOff;
      char aBuf[1024];
      int fd1;
      int fd2;
      unlink(zTo);

      fd1 = open(zFrom, O_RDONLY);
      if( fd1<0 ){
        system_error(pErr, errno);
        return;
      }
      fd2 = open(zTo, O_RDWR|O_CREAT|O_EXCL, 0644);
      if( fd2<0 ){
        system_error(pErr, errno);
        close(fd1);
        return;
      }

      iOff = 0;
      while( iOff<nByte ){
        int nCopy = sizeof(aBuf);
        if( nCopy+iOff>nByte ){
          nCopy = nByte - iOff;
        }
        if( nCopy!=read(fd1, aBuf, nCopy) ){
          system_error(pErr, errno);
          break;
        }
        if( nCopy!=write(fd2, aBuf, nCopy) ){
          system_error(pErr, errno);
          break;
        }
        iOff += nCopy;
      }

      close(fd1);
      close(fd2);
    }
  }
}
