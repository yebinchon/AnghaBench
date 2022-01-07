
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef int sqlite3 ;
struct TYPE_5__ {char* zTableName; int isPattern; int base; int interp; void* zThis; int * db; } ;
typedef TYPE_1__ echo_vtab ;
struct TYPE_6__ {int interp; } ;
typedef TYPE_2__ EchoModule ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int appendToEchoModule (int ,char const* const) ;
 int dequoteString (char*) ;
 int echoDeclareVtab (TYPE_1__*,int *) ;
 int echoDestructor (int *) ;
 TYPE_1__* sqlite3MallocZero (int) ;
 int sqlite3_free (char*) ;
 void* sqlite3_mprintf (char*,char const* const,...) ;

__attribute__((used)) static int echoConstructor(
  sqlite3 *db,
  void *pAux,
  int argc, const char *const*argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  int rc;
  int i;
  echo_vtab *pVtab;


  pVtab = sqlite3MallocZero( sizeof(*pVtab) );
  if( !pVtab ){
    return SQLITE_NOMEM;
  }
  pVtab->interp = ((EchoModule *)pAux)->interp;
  pVtab->db = db;


  pVtab->zThis = sqlite3_mprintf("%s", argv[2]);
  if( !pVtab->zThis ){
    echoDestructor((sqlite3_vtab *)pVtab);
    return SQLITE_NOMEM;
  }


  if( argc>3 ){
    pVtab->zTableName = sqlite3_mprintf("%s", argv[3]);
    dequoteString(pVtab->zTableName);
    if( pVtab->zTableName && pVtab->zTableName[0]=='*' ){
      char *z = sqlite3_mprintf("%s%s", argv[2], &(pVtab->zTableName[1]));
      sqlite3_free(pVtab->zTableName);
      pVtab->zTableName = z;
      pVtab->isPattern = 1;
    }
    if( !pVtab->zTableName ){
      echoDestructor((sqlite3_vtab *)pVtab);
      return SQLITE_NOMEM;
    }
  }


  for(i=0; i<argc; i++){
    appendToEchoModule(pVtab->interp, argv[i]);
  }





  rc = echoDeclareVtab(pVtab, db);
  if( rc!=SQLITE_OK ){
    echoDestructor((sqlite3_vtab *)pVtab);
    return rc;
  }


  *ppVtab = &pVtab->base;
  return SQLITE_OK;
}
