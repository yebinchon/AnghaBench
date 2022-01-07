
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef int sqlite3_int64 ;
typedef int sqlite3 ;
struct TYPE_5__ {char* zDb; char* zName; int nIndex; int * db; } ;
struct TYPE_4__ {TYPE_2__* pFts3Tab; } ;
typedef TYPE_1__ Fts3auxTable ;
typedef TYPE_2__ Fts3Table ;


 int FTS3_AUX_SCHEMA ;
 int SQLITE_ERROR ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int UNUSED_PARAMETER (void*) ;
 int memcpy (char*,char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sqlite3Fts3Dequote (char*) ;
 int sqlite3Fts3ErrMsg (char**,char*) ;
 int sqlite3_declare_vtab (int *,int ) ;
 scalar_t__ sqlite3_malloc64 (int) ;
 scalar_t__ sqlite3_strnicmp (char*,char const*,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int fts3auxConnectMethod(
  sqlite3 *db,
  void *pUnused,
  int argc,
  const char * const *argv,
  sqlite3_vtab **ppVtab,
  char **pzErr
){
  char const *zDb;
  char const *zFts3;
  int nDb;
  int nFts3;
  sqlite3_int64 nByte;
  int rc;
  Fts3auxTable *p;

  UNUSED_PARAMETER(pUnused);






  if( argc!=4 && argc!=5 ) goto bad_args;

  zDb = argv[1];
  nDb = (int)strlen(zDb);
  if( argc==5 ){
    if( nDb==4 && 0==sqlite3_strnicmp("temp", zDb, 4) ){
      zDb = argv[3];
      nDb = (int)strlen(zDb);
      zFts3 = argv[4];
    }else{
      goto bad_args;
    }
  }else{
    zFts3 = argv[3];
  }
  nFts3 = (int)strlen(zFts3);

  rc = sqlite3_declare_vtab(db, FTS3_AUX_SCHEMA);
  if( rc!=SQLITE_OK ) return rc;

  nByte = sizeof(Fts3auxTable) + sizeof(Fts3Table) + nDb + nFts3 + 2;
  p = (Fts3auxTable *)sqlite3_malloc64(nByte);
  if( !p ) return SQLITE_NOMEM;
  memset(p, 0, nByte);

  p->pFts3Tab = (Fts3Table *)&p[1];
  p->pFts3Tab->zDb = (char *)&p->pFts3Tab[1];
  p->pFts3Tab->zName = &p->pFts3Tab->zDb[nDb+1];
  p->pFts3Tab->db = db;
  p->pFts3Tab->nIndex = 1;

  memcpy((char *)p->pFts3Tab->zDb, zDb, nDb);
  memcpy((char *)p->pFts3Tab->zName, zFts3, nFts3);
  sqlite3Fts3Dequote((char *)p->pFts3Tab->zName);

  *ppVtab = (sqlite3_vtab *)p;
  return SQLITE_OK;

 bad_args:
  sqlite3Fts3ErrMsg(pzErr, "invalid arguments to fts4aux constructor");
  return SQLITE_ERROR;
}
