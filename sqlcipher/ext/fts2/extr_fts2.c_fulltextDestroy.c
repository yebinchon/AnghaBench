
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_3__ {int zName; int zDb; int db; } ;
typedef TYPE_1__ fulltext_vtab ;


 int SQLITE_OK ;
 int TRACE (char*) ;
 int fulltext_vtab_destroy (TYPE_1__*) ;
 int sql_exec (int ,int ,int ,char*) ;

__attribute__((used)) static int fulltextDestroy(sqlite3_vtab *pVTab){
  fulltext_vtab *v = (fulltext_vtab *)pVTab;
  int rc;

  TRACE(("FTS2 Destroy %p\n", pVTab));
  rc = sql_exec(v->db, v->zDb, v->zName,
                "drop table if exists %_content;"
                "drop table if exists %_segments;"
                "drop table if exists %_segdir;"
                );
  if( rc!=SQLITE_OK ) return rc;

  fulltext_vtab_destroy((fulltext_vtab *)pVTab);
  return SQLITE_OK;
}
