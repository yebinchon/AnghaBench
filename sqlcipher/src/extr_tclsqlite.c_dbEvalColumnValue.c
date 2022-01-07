
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int sqlite_int64 ;
typedef int sqlite3_stmt ;
typedef int Tcl_Obj ;
struct TYPE_7__ {TYPE_1__* pDb; TYPE_2__* pPreStmt; } ;
struct TYPE_6__ {int * pStmt; } ;
struct TYPE_5__ {char* zNull; } ;
typedef TYPE_3__ DbEvalContext ;






 int * Tcl_NewByteArrayObj (int *,int) ;
 int * Tcl_NewDoubleObj (int ) ;
 int * Tcl_NewIntObj (int) ;
 int * Tcl_NewStringObj (char*,int) ;
 int * Tcl_NewWideIntObj (int) ;
 char* sqlite3_column_blob (int *,int) ;
 int sqlite3_column_bytes (int *,int) ;
 int sqlite3_column_double (int *,int) ;
 int sqlite3_column_int64 (int *,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_column_type (int *,int) ;

__attribute__((used)) static Tcl_Obj *dbEvalColumnValue(DbEvalContext *p, int iCol){
  sqlite3_stmt *pStmt = p->pPreStmt->pStmt;
  switch( sqlite3_column_type(pStmt, iCol) ){
    case 131: {
      int bytes = sqlite3_column_bytes(pStmt, iCol);
      const char *zBlob = sqlite3_column_blob(pStmt, iCol);
      if( !zBlob ) bytes = 0;
      return Tcl_NewByteArrayObj((u8*)zBlob, bytes);
    }
    case 129: {
      sqlite_int64 v = sqlite3_column_int64(pStmt, iCol);
      if( v>=-2147483647 && v<=2147483647 ){
        return Tcl_NewIntObj((int)v);
      }else{
        return Tcl_NewWideIntObj(v);
      }
    }
    case 130: {
      return Tcl_NewDoubleObj(sqlite3_column_double(pStmt, iCol));
    }
    case 128: {
      return Tcl_NewStringObj(p->pDb->zNull, -1);
    }
  }

  return Tcl_NewStringObj((char*)sqlite3_column_text(pStmt, iCol), -1);
}
