
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_5__ {int nCol; int db; int zName; int zDb; int zContentRowid; int zContent; int zContentExprlist; scalar_t__ bColumnsize; } ;
struct TYPE_4__ {int ** aStmt; TYPE_2__* pConfig; } ;
typedef TYPE_1__ Fts5Storage ;
typedef TYPE_2__ Fts5Config ;


 int ArraySize (int **) ;
 int FTS5_STMT_DELETE_DOCSIZE ;


 int FTS5_STMT_LOOKUP_DOCSIZE ;

 int FTS5_STMT_REPLACE_DOCSIZE ;



 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_PREPARE_NO_VTAB ;
 int SQLITE_PREPARE_PERSISTENT ;
 int assert (int) ;
 int sqlite3_errmsg (int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_malloc64 (int) ;
 char* sqlite3_mprintf (char const*,int ,...) ;
 int sqlite3_prepare_v3 (int ,char*,int,int,int **,int ) ;
 int sqlite3_reset (int *) ;

__attribute__((used)) static int fts5StorageGetStmt(
  Fts5Storage *p,
  int eStmt,
  sqlite3_stmt **ppStmt,
  char **pzErrMsg
){
  int rc = SQLITE_OK;



  assert( p->pConfig->bColumnsize || (
        eStmt!=FTS5_STMT_REPLACE_DOCSIZE
     && eStmt!=FTS5_STMT_DELETE_DOCSIZE
     && eStmt!=FTS5_STMT_LOOKUP_DOCSIZE
  ));

  assert( eStmt>=0 && eStmt<ArraySize(p->aStmt) );
  if( p->aStmt[eStmt]==0 ){
    const char *azStmt[] = {
      "SELECT %s FROM %s T WHERE T.%Q >= ? AND T.%Q <= ? ORDER BY T.%Q ASC",
      "SELECT %s FROM %s T WHERE T.%Q <= ? AND T.%Q >= ? ORDER BY T.%Q DESC",
      "SELECT %s FROM %s T WHERE T.%Q=?",

      "INSERT INTO %Q.'%q_content' VALUES(%s)",
      "REPLACE INTO %Q.'%q_content' VALUES(%s)",
      "DELETE FROM %Q.'%q_content' WHERE id=?",
      "REPLACE INTO %Q.'%q_docsize' VALUES(?,?)",
      "DELETE FROM %Q.'%q_docsize' WHERE id=?",

      "SELECT sz FROM %Q.'%q_docsize' WHERE id=?",

      "REPLACE INTO %Q.'%q_config' VALUES(?,?)",
      "SELECT %s FROM %s AS T",
    };
    Fts5Config *pC = p->pConfig;
    char *zSql = 0;

    switch( eStmt ){
      case 130:
        zSql = sqlite3_mprintf(azStmt[eStmt],
            pC->zContentExprlist, pC->zContent
        );
        break;

      case 129:
      case 128:
        zSql = sqlite3_mprintf(azStmt[eStmt], pC->zContentExprlist,
            pC->zContent, pC->zContentRowid, pC->zContentRowid,
            pC->zContentRowid
        );
        break;

      case 132:
        zSql = sqlite3_mprintf(azStmt[eStmt],
            pC->zContentExprlist, pC->zContent, pC->zContentRowid
        );
        break;

      case 133:
      case 131: {
        int nCol = pC->nCol + 1;
        char *zBind;
        int i;

        zBind = sqlite3_malloc64(1 + nCol*2);
        if( zBind ){
          for(i=0; i<nCol; i++){
            zBind[i*2] = '?';
            zBind[i*2 + 1] = ',';
          }
          zBind[i*2-1] = '\0';
          zSql = sqlite3_mprintf(azStmt[eStmt], pC->zDb, pC->zName, zBind);
          sqlite3_free(zBind);
        }
        break;
      }

      default:
        zSql = sqlite3_mprintf(azStmt[eStmt], pC->zDb, pC->zName);
        break;
    }

    if( zSql==0 ){
      rc = SQLITE_NOMEM;
    }else{
      int f = SQLITE_PREPARE_PERSISTENT;
      if( eStmt>132 ) f |= SQLITE_PREPARE_NO_VTAB;
      rc = sqlite3_prepare_v3(pC->db, zSql, -1, f, &p->aStmt[eStmt], 0);
      sqlite3_free(zSql);
      if( rc!=SQLITE_OK && pzErrMsg ){
        *pzErrMsg = sqlite3_mprintf("%s", sqlite3_errmsg(pC->db));
      }
    }
  }

  *ppStmt = p->aStmt[eStmt];
  sqlite3_reset(*ppStmt);
  return rc;
}
