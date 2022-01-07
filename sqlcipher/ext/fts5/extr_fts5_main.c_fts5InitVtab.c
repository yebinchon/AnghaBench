
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int sqlite3_vtab ;
typedef int sqlite3 ;
struct TYPE_12__ {char** pzErrmsg; } ;
struct TYPE_10__ {int pIndex; TYPE_3__* pConfig; } ;
struct TYPE_11__ {TYPE_1__ p; int pStorage; int * pGlobal; } ;
typedef int Fts5Global ;
typedef TYPE_2__ Fts5FullTable ;
typedef TYPE_3__ Fts5Config ;


 int FTS5_BEGIN ;
 int SQLITE_OK ;
 int assert (int) ;
 int fts5CheckTransactionState (TYPE_2__*,int ,int ) ;
 int fts5FreeVtab (TYPE_2__*) ;
 int sqlite3Fts5ConfigDeclareVtab (TYPE_3__*) ;
 int sqlite3Fts5ConfigParse (int *,int *,int,char const**,TYPE_3__**,char**) ;
 int sqlite3Fts5IndexLoadConfig (int ) ;
 int sqlite3Fts5IndexOpen (TYPE_3__*,int,int *,char**) ;
 int sqlite3Fts5IndexRollback (int ) ;
 scalar_t__ sqlite3Fts5MallocZero (int*,int) ;
 int sqlite3Fts5StorageOpen (TYPE_3__*,int ,int,int *,char**) ;

__attribute__((used)) static int fts5InitVtab(
  int bCreate,
  sqlite3 *db,
  void *pAux,
  int argc,
  const char * const *argv,
  sqlite3_vtab **ppVTab,
  char **pzErr
){
  Fts5Global *pGlobal = (Fts5Global*)pAux;
  const char **azConfig = (const char**)argv;
  int rc = SQLITE_OK;
  Fts5Config *pConfig = 0;
  Fts5FullTable *pTab = 0;


  pTab = (Fts5FullTable*)sqlite3Fts5MallocZero(&rc, sizeof(Fts5FullTable));
  if( rc==SQLITE_OK ){
    rc = sqlite3Fts5ConfigParse(pGlobal, db, argc, azConfig, &pConfig, pzErr);
    assert( (rc==SQLITE_OK && *pzErr==0) || pConfig==0 );
  }
  if( rc==SQLITE_OK ){
    pTab->p.pConfig = pConfig;
    pTab->pGlobal = pGlobal;
  }


  if( rc==SQLITE_OK ){
    rc = sqlite3Fts5IndexOpen(pConfig, bCreate, &pTab->p.pIndex, pzErr);
  }


  if( rc==SQLITE_OK ){
    rc = sqlite3Fts5StorageOpen(
        pConfig, pTab->p.pIndex, bCreate, &pTab->pStorage, pzErr
    );
  }


  if( rc==SQLITE_OK ){
    rc = sqlite3Fts5ConfigDeclareVtab(pConfig);
  }


  if( rc==SQLITE_OK ){
    assert( pConfig->pzErrmsg==0 );
    pConfig->pzErrmsg = pzErr;
    rc = sqlite3Fts5IndexLoadConfig(pTab->p.pIndex);
    sqlite3Fts5IndexRollback(pTab->p.pIndex);
    pConfig->pzErrmsg = 0;
  }

  if( rc!=SQLITE_OK ){
    fts5FreeVtab(pTab);
    pTab = 0;
  }else if( bCreate ){
    fts5CheckTransactionState(pTab, FTS5_BEGIN, 0);
  }
  *ppVTab = (sqlite3_vtab*)pTab;
  return rc;
}
