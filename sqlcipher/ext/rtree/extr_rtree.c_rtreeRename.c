
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_3__ {int db; int zName; int zDb; } ;
typedef TYPE_1__ Rtree ;


 int SQLITE_NOMEM ;
 int nodeBlobReset (TYPE_1__*) ;
 int sqlite3_exec (int ,char*,int ,int ,int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int ,int ,char const*,int ,int ,char const*,int ,int ,char const*) ;

__attribute__((used)) static int rtreeRename(sqlite3_vtab *pVtab, const char *zNewName){
  Rtree *pRtree = (Rtree *)pVtab;
  int rc = SQLITE_NOMEM;
  char *zSql = sqlite3_mprintf(
    "ALTER TABLE %Q.'%q_node'   RENAME TO \"%w_node\";"
    "ALTER TABLE %Q.'%q_parent' RENAME TO \"%w_parent\";"
    "ALTER TABLE %Q.'%q_rowid'  RENAME TO \"%w_rowid\";"
    , pRtree->zDb, pRtree->zName, zNewName
    , pRtree->zDb, pRtree->zName, zNewName
    , pRtree->zDb, pRtree->zName, zNewName
  );
  if( zSql ){
    nodeBlobReset(pRtree);
    rc = sqlite3_exec(pRtree->db, zSql, 0, 0, 0);
    sqlite3_free(zSql);
  }
  return rc;
}
