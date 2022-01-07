
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ zErrMsg; TYPE_1__* pModule; } ;
typedef TYPE_2__ sqlite3_vtab ;
typedef int sqlite3_index_info ;
typedef int Table ;
struct TYPE_11__ {TYPE_2__* pVtab; } ;
struct TYPE_10__ {int db; } ;
struct TYPE_8__ {int (* xBestIndex ) (TYPE_2__*,int *) ;} ;
typedef TYPE_3__ Parse ;


 int SQLITE_CONSTRAINT ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int TRACE_IDX_INPUTS (int *) ;
 int TRACE_IDX_OUTPUTS (int *) ;
 scalar_t__ sqlite3ErrStr (int) ;
 int sqlite3ErrorMsg (TYPE_3__*,char*,scalar_t__) ;
 TYPE_6__* sqlite3GetVTable (int ,int *) ;
 int sqlite3OomFault (int ) ;
 int sqlite3_free (scalar_t__) ;
 int stub1 (TYPE_2__*,int *) ;

__attribute__((used)) static int vtabBestIndex(Parse *pParse, Table *pTab, sqlite3_index_info *p){
  sqlite3_vtab *pVtab = sqlite3GetVTable(pParse->db, pTab)->pVtab;
  int rc;

  TRACE_IDX_INPUTS(p);
  rc = pVtab->pModule->xBestIndex(pVtab, p);
  TRACE_IDX_OUTPUTS(p);

  if( rc!=SQLITE_OK && rc!=SQLITE_CONSTRAINT ){
    if( rc==SQLITE_NOMEM ){
      sqlite3OomFault(pParse->db);
    }else if( !pVtab->zErrMsg ){
      sqlite3ErrorMsg(pParse, "%s", sqlite3ErrStr(rc));
    }else{
      sqlite3ErrorMsg(pParse, "%s", pVtab->zErrMsg);
    }
  }
  sqlite3_free(pVtab->zErrMsg);
  pVtab->zErrMsg = 0;
  return rc;
}
