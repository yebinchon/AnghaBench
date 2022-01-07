
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nCol; char const* zName; int db; int * azCol; } ;
typedef TYPE_1__ Fts5Config ;


 int FTS5_RANK_NAME ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int ) ;
 char* sqlite3Fts5Mprintf (int*,char*,...) ;
 int sqlite3_declare_vtab (int ,char*) ;
 int sqlite3_free (char*) ;

int sqlite3Fts5ConfigDeclareVtab(Fts5Config *pConfig){
  int i;
  int rc = SQLITE_OK;
  char *zSql;

  zSql = sqlite3Fts5Mprintf(&rc, "CREATE TABLE x(");
  for(i=0; zSql && i<pConfig->nCol; i++){
    const char *zSep = (i==0?"":", ");
    zSql = sqlite3Fts5Mprintf(&rc, "%z%s%Q", zSql, zSep, pConfig->azCol[i]);
  }
  zSql = sqlite3Fts5Mprintf(&rc, "%z, %Q HIDDEN, %s HIDDEN)",
      zSql, pConfig->zName, FTS5_RANK_NAME
  );

  assert( zSql || rc==SQLITE_NOMEM );
  if( zSql ){
    rc = sqlite3_declare_vtab(pConfig->db, zSql);
    sqlite3_free(zSql);
  }

  return rc;
}
