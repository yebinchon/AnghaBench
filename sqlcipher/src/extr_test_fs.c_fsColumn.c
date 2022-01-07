
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_size; } ;
typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;
struct TYPE_2__ {int nAlloc; char* zBuf; int nBuf; int pStmt; } ;
typedef TYPE_1__ fs_cursor ;


 int O_RDONLY ;
 int SQLITE_ERROR ;
 int SQLITE_IOERR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 int assert (int) ;
 int close (int) ;
 int fstat (int,struct stat*) ;
 int open (char const*,int ) ;
 scalar_t__ read (int,char*,int) ;
 char* sqlite3Realloc (char*,int) ;
 scalar_t__ sqlite3_column_text (int ,int) ;
 int sqlite3_column_value (int ,int ) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 int sqlite3_result_value (int *,int ) ;

__attribute__((used)) static int fsColumn(sqlite3_vtab_cursor *cur, sqlite3_context *ctx, int i){
  fs_cursor *pCur = (fs_cursor*)cur;

  assert( i==0 || i==1 || i==2 );
  if( i==0 ){
    sqlite3_result_value(ctx, sqlite3_column_value(pCur->pStmt, 0));
  }else{
    const char *zFile = (const char *)sqlite3_column_text(pCur->pStmt, 1);
    struct stat sbuf;
    int fd;

    int n;
    fd = open(zFile, O_RDONLY);
    if( fd<0 ) return SQLITE_IOERR;
    fstat(fd, &sbuf);

    if( sbuf.st_size>=pCur->nAlloc ){
      sqlite3_int64 nNew = sbuf.st_size*2;
      char *zNew;
      if( nNew<1024 ) nNew = 1024;

      zNew = sqlite3Realloc(pCur->zBuf, nNew);
      if( zNew==0 ){
        close(fd);
        return SQLITE_NOMEM;
      }
      pCur->zBuf = zNew;
      pCur->nAlloc = nNew;
    }

    n = (int)read(fd, pCur->zBuf, sbuf.st_size);
    close(fd);
    if( n!=sbuf.st_size ) return SQLITE_ERROR;
    pCur->nBuf = sbuf.st_size;
    pCur->zBuf[pCur->nBuf] = '\0';

    sqlite3_result_text(ctx, pCur->zBuf, -1, SQLITE_TRANSIENT);
  }
  return SQLITE_OK;
}
