
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * interp; int base; } ;
typedef TYPE_1__ tclvar_vtab ;
typedef int sqlite3_vtab ;
typedef int sqlite3 ;
typedef int Tcl_Interp ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 TYPE_1__* sqlite3MallocZero (int) ;
 int sqlite3_declare_vtab (int *,char const*) ;

__attribute__((used)) static int tclvarConnect(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  tclvar_vtab *pVtab;
  static const char zSchema[] =
     "CREATE TABLE x("
     "  name TEXT,"
     "  arrayname TEXT,"
     "  value TEXT,"
     "  fullname TEXT PRIMARY KEY"
     ") WITHOUT ROWID";
  pVtab = sqlite3MallocZero( sizeof(*pVtab) );
  if( pVtab==0 ) return SQLITE_NOMEM;
  *ppVtab = &pVtab->base;
  pVtab->interp = (Tcl_Interp *)pAux;
  sqlite3_declare_vtab(db, zSchema);
  return SQLITE_OK;
}
