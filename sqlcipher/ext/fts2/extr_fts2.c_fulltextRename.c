
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_2__ {int db; int zName; int zDb; } ;
typedef TYPE_1__ fulltext_vtab ;


 int SQLITE_NOMEM ;
 int sqlite3_exec (int ,char*,int ,int ,int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int ,int ,char const*,int ,int ,char const*,int ,int ,char const*) ;

__attribute__((used)) static int fulltextRename(
  sqlite3_vtab *pVtab,
  const char *zName
){
  fulltext_vtab *p = (fulltext_vtab *)pVtab;
  int rc = SQLITE_NOMEM;
  char *zSql = sqlite3_mprintf(
    "ALTER TABLE %Q.'%q_content'  RENAME TO '%q_content';"
    "ALTER TABLE %Q.'%q_segments' RENAME TO '%q_segments';"
    "ALTER TABLE %Q.'%q_segdir'   RENAME TO '%q_segdir';"
    , p->zDb, p->zName, zName
    , p->zDb, p->zName, zName
    , p->zDb, p->zName, zName
  );
  if( zSql ){
    rc = sqlite3_exec(p->db, zSql, 0, 0, 0);
    sqlite3_free(zSql);
  }
  return rc;
}
