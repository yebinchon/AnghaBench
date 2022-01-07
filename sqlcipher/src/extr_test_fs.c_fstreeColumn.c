
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; int st_size; } ;
typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_2__ {int fd; int pStmt; } ;
typedef TYPE_1__ FstreeCsr ;


 int SQLITE_IOERR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 scalar_t__ S_ISREG (int) ;
 int fstat (int ,struct stat*) ;
 int read (int ,char*,int) ;
 int sqlite3_column_value (int ,int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc (int) ;
 int sqlite3_result_blob (int *,char*,int,int ) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_value (int *,int ) ;

__attribute__((used)) static int fstreeColumn(sqlite3_vtab_cursor *cur, sqlite3_context *ctx, int i){
  FstreeCsr *pCsr = (FstreeCsr*)cur;
  if( i==0 ){
    sqlite3_result_value(ctx, sqlite3_column_value(pCsr->pStmt, 0));
  }else{
    struct stat sBuf;
    fstat(pCsr->fd, &sBuf);

    if( S_ISREG(sBuf.st_mode) ){
      if( i==1 ){
        sqlite3_result_int64(ctx, sBuf.st_size);
      }else{
        int nRead;
        char *aBuf = sqlite3_malloc(sBuf.st_mode+1);
        if( !aBuf ) return SQLITE_NOMEM;
        nRead = read(pCsr->fd, aBuf, sBuf.st_mode);
        if( nRead!=sBuf.st_mode ){
          return SQLITE_IOERR;
        }
        sqlite3_result_blob(ctx, aBuf, nRead, SQLITE_TRANSIENT);
        sqlite3_free(aBuf);
      }
    }
  }

  return SQLITE_OK;
}
