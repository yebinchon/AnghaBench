
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_int64 ;
typedef int sqlite3_context ;
struct TYPE_2__ {size_t eType; int iRowid; scalar_t__ pPtr; int iCnt; } ;
typedef TYPE_1__ carray_cursor ;
 int SQLITE_OK ;
 int SQLITE_STATIC ;
 int SQLITE_TRANSIENT ;
 char const** azType ;
 int sqlite3_result_double (int *,double) ;
 int sqlite3_result_int (int *,int) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_text (int *,char const*,int,int ) ;

__attribute__((used)) static int carrayColumn(
  sqlite3_vtab_cursor *cur,
  sqlite3_context *ctx,
  int i
){
  carray_cursor *pCur = (carray_cursor*)cur;
  sqlite3_int64 x = 0;
  switch( i ){
    case 132: return SQLITE_OK;
    case 134: x = pCur->iCnt; break;
    case 133: {
      sqlite3_result_text(ctx, azType[pCur->eType], -1, SQLITE_STATIC);
      return SQLITE_OK;
    }
    default: {
      switch( pCur->eType ){
        case 130: {
          int *p = (int*)pCur->pPtr;
          sqlite3_result_int(ctx, p[pCur->iRowid-1]);
          return SQLITE_OK;
        }
        case 129: {
          sqlite3_int64 *p = (sqlite3_int64*)pCur->pPtr;
          sqlite3_result_int64(ctx, p[pCur->iRowid-1]);
          return SQLITE_OK;
        }
        case 131: {
          double *p = (double*)pCur->pPtr;
          sqlite3_result_double(ctx, p[pCur->iRowid-1]);
          return SQLITE_OK;
        }
        case 128: {
          const char **p = (const char**)pCur->pPtr;
          sqlite3_result_text(ctx, p[pCur->iRowid-1], -1, SQLITE_TRANSIENT);
          return SQLITE_OK;
        }
      }
    }
  }
  sqlite3_result_int64(ctx, x);
  return SQLITE_OK;
}
