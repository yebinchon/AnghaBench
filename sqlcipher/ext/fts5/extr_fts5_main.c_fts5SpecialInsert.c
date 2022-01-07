
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_value ;
struct TYPE_9__ {scalar_t__ eContent; void* bPrefixIndex; } ;
struct TYPE_7__ {TYPE_3__* pConfig; int pIndex; } ;
struct TYPE_8__ {int pStorage; TYPE_1__ p; } ;
typedef TYPE_2__ Fts5FullTable ;
typedef TYPE_3__ Fts5Config ;


 scalar_t__ FTS5_CONTENT_NONE ;
 scalar_t__ FTS5_CONTENT_NORMAL ;
 int SQLITE_ERROR ;
 int SQLITE_OK ;
 int fts5SetVtabError (TYPE_2__*,char*) ;
 int sqlite3Fts5ConfigSetValue (TYPE_3__*,char const*,int *,int*) ;
 int sqlite3Fts5IndexLoadConfig (int ) ;
 int sqlite3Fts5StorageConfigValue (int ,char const*,int *,int ) ;
 int sqlite3Fts5StorageDeleteAll (int ) ;
 int sqlite3Fts5StorageIntegrity (int ) ;
 int sqlite3Fts5StorageMerge (int ,int) ;
 int sqlite3Fts5StorageOptimize (int ) ;
 int sqlite3Fts5StorageRebuild (int ) ;
 scalar_t__ sqlite3_stricmp (char*,char const*) ;
 void* sqlite3_value_int (int *) ;

__attribute__((used)) static int fts5SpecialInsert(
  Fts5FullTable *pTab,
  const char *zCmd,
  sqlite3_value *pVal
){
  Fts5Config *pConfig = pTab->p.pConfig;
  int rc = SQLITE_OK;
  int bError = 0;

  if( 0==sqlite3_stricmp("delete-all", zCmd) ){
    if( pConfig->eContent==FTS5_CONTENT_NORMAL ){
      fts5SetVtabError(pTab,
          "'delete-all' may only be used with a "
          "contentless or external content fts5 table"
      );
      rc = SQLITE_ERROR;
    }else{
      rc = sqlite3Fts5StorageDeleteAll(pTab->pStorage);
    }
  }else if( 0==sqlite3_stricmp("rebuild", zCmd) ){
    if( pConfig->eContent==FTS5_CONTENT_NONE ){
      fts5SetVtabError(pTab,
          "'rebuild' may not be used with a contentless fts5 table"
      );
      rc = SQLITE_ERROR;
    }else{
      rc = sqlite3Fts5StorageRebuild(pTab->pStorage);
    }
  }else if( 0==sqlite3_stricmp("optimize", zCmd) ){
    rc = sqlite3Fts5StorageOptimize(pTab->pStorage);
  }else if( 0==sqlite3_stricmp("merge", zCmd) ){
    int nMerge = sqlite3_value_int(pVal);
    rc = sqlite3Fts5StorageMerge(pTab->pStorage, nMerge);
  }else if( 0==sqlite3_stricmp("integrity-check", zCmd) ){
    rc = sqlite3Fts5StorageIntegrity(pTab->pStorage);




  }else{
    rc = sqlite3Fts5IndexLoadConfig(pTab->p.pIndex);
    if( rc==SQLITE_OK ){
      rc = sqlite3Fts5ConfigSetValue(pTab->p.pConfig, zCmd, pVal, &bError);
    }
    if( rc==SQLITE_OK ){
      if( bError ){
        rc = SQLITE_ERROR;
      }else{
        rc = sqlite3Fts5StorageConfigValue(pTab->pStorage, zCmd, pVal, 0);
      }
    }
  }
  return rc;
}
