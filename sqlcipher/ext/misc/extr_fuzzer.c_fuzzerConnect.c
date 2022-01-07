
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef scalar_t__ sqlite3_int64 ;
typedef int sqlite3 ;
struct TYPE_5__ {char* zClassName; } ;
typedef TYPE_1__ fuzzer_vtab ;


 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 char* fuzzerDequote (char const* const) ;
 int fuzzerDisconnect (int *) ;
 int fuzzerLoadRules (int *,TYPE_1__*,char const*,char*,char**) ;
 int memcpy (char*,char const*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3_declare_vtab (int *,char*) ;
 int sqlite3_free (char*) ;
 TYPE_1__* sqlite3_malloc64 (scalar_t__) ;
 char* sqlite3_mprintf (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int fuzzerConnect(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  int rc = SQLITE_OK;
  fuzzer_vtab *pNew = 0;
  const char *zModule = argv[0];
  const char *zDb = argv[1];

  if( argc!=4 ){
    *pzErr = sqlite3_mprintf(
        "%s: wrong number of CREATE VIRTUAL TABLE arguments", zModule
    );
    rc = SQLITE_ERROR;
  }else{
    sqlite3_int64 nModule;

    nModule = strlen(zModule);
    pNew = sqlite3_malloc64( sizeof(*pNew) + nModule + 1);
    if( pNew==0 ){
      rc = SQLITE_NOMEM;
    }else{
      char *zTab;

      memset(pNew, 0, sizeof(*pNew));
      pNew->zClassName = (char*)&pNew[1];
      memcpy(pNew->zClassName, zModule, (size_t)(nModule+1));

      zTab = fuzzerDequote(argv[3]);
      if( zTab==0 ){
        rc = SQLITE_NOMEM;
      }else{
        rc = fuzzerLoadRules(db, pNew, zDb, zTab, pzErr);
        sqlite3_free(zTab);
      }

      if( rc==SQLITE_OK ){
        rc = sqlite3_declare_vtab(db, "CREATE TABLE x(word,distance,ruleset)");
      }
      if( rc!=SQLITE_OK ){
        fuzzerDisconnect((sqlite3_vtab *)pNew);
        pNew = 0;
      }
    }
  }

  *ppVtab = (sqlite3_vtab *)pNew;
  return rc;
}
