
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_context ;
struct TYPE_2__ {char* zTransient; char** azFile; int nFile; int * aBuf; } ;
typedef TYPE_1__ VfslogCsr ;


 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int SQLITE_TRANSIENT ;
 int assert (int) ;
 unsigned int get32bits (int *) ;
 int sqlite3_result_int (int *,unsigned int) ;
 int sqlite3_result_text (int *,char*,int,int ) ;
 char* vfslog_eventname (unsigned int) ;

__attribute__((used)) static int vlogColumn(
  sqlite3_vtab_cursor *pCursor,
  sqlite3_context *ctx,
  int i
){
  unsigned int val;
  VfslogCsr *pCsr = (VfslogCsr *)pCursor;

  assert( i<7 );
  val = get32bits(&pCsr->aBuf[4*i]);

  switch( i ){
    case 0: {
      sqlite3_result_text(ctx, vfslog_eventname(val), -1, SQLITE_STATIC);
      break;
    }
    case 1: {
      char *zStr = pCsr->zTransient;
      if( val!=0 && val<(unsigned)pCsr->nFile ){
        zStr = pCsr->azFile[val];
      }
      sqlite3_result_text(ctx, zStr, -1, SQLITE_TRANSIENT);
      break;
    }
    default:
      sqlite3_result_int(ctx, val);
      break;
  }

  return SQLITE_OK;
}
