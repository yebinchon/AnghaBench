
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef int sqlite3 ;
struct TYPE_4__ {int * db; } ;
typedef TYPE_1__ schema_vtab ;


 int SCHEMA ;
 int SQLITE_NOMEM ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3_declare_vtab (int *,int ) ;
 TYPE_1__* sqlite3_malloc (int) ;

__attribute__((used)) static int schemaCreate(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  int rc = SQLITE_NOMEM;
  schema_vtab *pVtab = sqlite3_malloc(sizeof(schema_vtab));
  if( pVtab ){
    memset(pVtab, 0, sizeof(schema_vtab));
    pVtab->db = db;

    rc = sqlite3_declare_vtab(db, SCHEMA);

  }
  *ppVtab = (sqlite3_vtab *)pVtab;
  return rc;
}
