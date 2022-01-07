
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef int sqlite3 ;
struct TYPE_2__ {char* zDb; int zName; scalar_t__ zContentTbl; int * db; } ;
typedef TYPE_1__ Fts3Table ;


 int SQLITE_OK ;
 int fts3DbExec (int*,int *,char*,char const*,int ,char const*,int ,char const*,int ,char const*,int ,char*,char const*,int ) ;
 int fts3DisconnectMethod (int *) ;

__attribute__((used)) static int fts3DestroyMethod(sqlite3_vtab *pVtab){
  Fts3Table *p = (Fts3Table *)pVtab;
  int rc = SQLITE_OK;
  const char *zDb = p->zDb;
  sqlite3 *db = p->db;


  fts3DbExec(&rc, db,
    "DROP TABLE IF EXISTS %Q.'%q_segments';"
    "DROP TABLE IF EXISTS %Q.'%q_segdir';"
    "DROP TABLE IF EXISTS %Q.'%q_docsize';"
    "DROP TABLE IF EXISTS %Q.'%q_stat';"
    "%s DROP TABLE IF EXISTS %Q.'%q_content';",
    zDb, p->zName,
    zDb, p->zName,
    zDb, p->zName,
    zDb, p->zName,
    (p->zContentTbl ? "--" : ""), zDb,p->zName
  );





  return (rc==SQLITE_OK ? fts3DisconnectMethod(pVtab) : rc);
}
