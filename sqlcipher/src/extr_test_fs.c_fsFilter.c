
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ pVtab; } ;
typedef TYPE_1__ sqlite3_vtab_cursor ;
typedef int sqlite3_value ;
struct TYPE_7__ {int db; int zTbl; int zDb; } ;
typedef TYPE_2__ fs_vtab ;
struct TYPE_8__ {int pStmt; } ;
typedef TYPE_3__ fs_cursor ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int fsNext (TYPE_1__*) ;
 int sqlite3_bind_value (int ,int,int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int ,int ) ;
 int sqlite3_prepare_v2 (int ,char*,int,int *,int ) ;

__attribute__((used)) static int fsFilter(
  sqlite3_vtab_cursor *pVtabCursor,
  int idxNum, const char *idxStr,
  int argc, sqlite3_value **argv
){
  int rc;
  fs_cursor *pCur = (fs_cursor *)pVtabCursor;
  fs_vtab *p = (fs_vtab *)(pVtabCursor->pVtab);

  assert( (idxNum==0 && argc==0) || (idxNum==1 && argc==1) );
  if( idxNum==1 ){
    char *zStmt = sqlite3_mprintf(
        "SELECT * FROM %Q.%Q WHERE rowid=?", p->zDb, p->zTbl);
    if( !zStmt ) return SQLITE_NOMEM;
    rc = sqlite3_prepare_v2(p->db, zStmt, -1, &pCur->pStmt, 0);
    sqlite3_free(zStmt);
    if( rc==SQLITE_OK ){
      sqlite3_bind_value(pCur->pStmt, 1, argv[0]);
    }
  }else{
    char *zStmt = sqlite3_mprintf("SELECT * FROM %Q.%Q", p->zDb, p->zTbl);
    if( !zStmt ) return SQLITE_NOMEM;
    rc = sqlite3_prepare_v2(p->db, zStmt, -1, &pCur->pStmt, 0);
    sqlite3_free(zStmt);
  }

  if( rc==SQLITE_OK ){
    rc = fsNext(pVtabCursor);
  }
  return rc;
}
