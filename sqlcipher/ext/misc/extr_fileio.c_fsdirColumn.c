
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;
typedef int mode_t ;
struct TYPE_3__ {int st_mode; int st_mtime; } ;
struct TYPE_4__ {char* zPath; size_t nBase; TYPE_1__ sStat; } ;
typedef TYPE_2__ fsdir_cursor ;







 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_TRANSIENT ;
 int S_ISDIR (int ) ;
 int S_ISLNK (int ) ;
 int readFileContents (int *,char*) ;
 int readlink (char*,char*,int) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc64 (int) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_null (int *) ;
 int sqlite3_result_text (int *,char*,int,int ) ;

__attribute__((used)) static int fsdirColumn(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  fsdir_cursor *pCur = (fsdir_cursor*)cur;
  switch( i ){
    case 129: {
      sqlite3_result_text(ctx, &pCur->zPath[pCur->nBase], -1, SQLITE_TRANSIENT);
      break;
    }

    case 131:
      sqlite3_result_int64(ctx, pCur->sStat.st_mode);
      break;

    case 130:
      sqlite3_result_int64(ctx, pCur->sStat.st_mtime);
      break;

    case 132: {
      mode_t m = pCur->sStat.st_mode;
      if( S_ISDIR(m) ){
        sqlite3_result_null(ctx);

      }else if( S_ISLNK(m) ){
        char aStatic[64];
        char *aBuf = aStatic;
        sqlite3_int64 nBuf = 64;
        int n;

        while( 1 ){
          n = readlink(pCur->zPath, aBuf, nBuf);
          if( n<nBuf ) break;
          if( aBuf!=aStatic ) sqlite3_free(aBuf);
          nBuf = nBuf*2;
          aBuf = sqlite3_malloc64(nBuf);
          if( aBuf==0 ){
            sqlite3_result_error_nomem(ctx);
            return SQLITE_NOMEM;
          }
        }

        sqlite3_result_text(ctx, aBuf, n, SQLITE_TRANSIENT);
        if( aBuf!=aStatic ) sqlite3_free(aBuf);

      }else{
        readFileContents(ctx, pCur->zPath);
      }
    }
    case 128:
    default: {


      break;
    }
  }
  return SQLITE_OK;
}
