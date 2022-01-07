
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zErrMsg; } ;
struct TYPE_7__ {TYPE_1__ base; int db; } ;
typedef TYPE_2__ tcl_vtab ;
struct TYPE_8__ {scalar_t__ pStmt; } ;
typedef TYPE_3__ tcl_cursor ;
struct TYPE_9__ {scalar_t__ pVtab; } ;
typedef TYPE_4__ sqlite3_vtab_cursor ;


 int SQLITE_OK ;
 int SQLITE_ROW ;
 char* sqlite3_errmsg (int ) ;
 int sqlite3_finalize (scalar_t__) ;
 int sqlite3_mprintf (char*,char const*) ;
 int sqlite3_step (scalar_t__) ;

__attribute__((used)) static int tclNext(sqlite3_vtab_cursor *pVtabCursor){
  tcl_cursor *pCsr = (tcl_cursor*)pVtabCursor;
  if( pCsr->pStmt ){
    tcl_vtab *pTab = (tcl_vtab*)(pVtabCursor->pVtab);
    int rc = sqlite3_step(pCsr->pStmt);
    if( rc!=SQLITE_ROW ){
      const char *zErr;
      rc = sqlite3_finalize(pCsr->pStmt);
      pCsr->pStmt = 0;
      if( rc!=SQLITE_OK ){
        zErr = sqlite3_errmsg(pTab->db);
        pTab->base.zErrMsg = sqlite3_mprintf("%s", zErr);
      }
    }
  }
  return SQLITE_OK;
}
