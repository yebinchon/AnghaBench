
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {int bDisable; } ;
struct TYPE_22__ {int nDb; TYPE_2__ lookaside; TYPE_1__* aDb; } ;
typedef TYPE_3__ sqlite3 ;
struct TYPE_23__ {int zDatabase; TYPE_3__* db; } ;
typedef TYPE_4__ analysisInfo ;
struct TYPE_24__ {int tabFlags; } ;
typedef TYPE_5__ Table ;
struct TYPE_26__ {scalar_t__ aiRowEst; scalar_t__ hasStat1; scalar_t__ aSample; } ;
struct TYPE_25__ {int idxHash; int tblHash; } ;
struct TYPE_20__ {scalar_t__ pBt; int zDbSName; TYPE_6__* pSchema; } ;
typedef TYPE_6__ Schema ;
typedef TYPE_7__ Index ;
typedef int HashElem ;


 int SQLITE_NOMEM ;
 int SQLITE_NOMEM_BKPT ;
 int SQLITE_OK ;
 int TF_HasStat1 ;
 int analysisLoader ;
 int assert (int) ;
 int loadStat4 (TYPE_3__*,int ) ;
 int sqlite3DbFree (TYPE_3__*,char*) ;
 int sqlite3DefaultRowEst (TYPE_7__*) ;
 int sqlite3DeleteIndexSamples (TYPE_3__*,TYPE_7__*) ;
 scalar_t__ sqlite3FindTable (TYPE_3__*,char*,int ) ;
 char* sqlite3MPrintf (TYPE_3__*,char*,int ) ;
 int sqlite3OomFault (TYPE_3__*) ;
 int sqlite3SchemaMutexHeld (TYPE_3__*,int,int ) ;
 int sqlite3_exec (TYPE_3__*,char*,int ,TYPE_4__*,int ) ;
 int sqlite3_free (scalar_t__) ;
 void* sqliteHashData (int *) ;
 int * sqliteHashFirst (int *) ;
 int * sqliteHashNext (int *) ;

int sqlite3AnalysisLoad(sqlite3 *db, int iDb){
  analysisInfo sInfo;
  HashElem *i;
  char *zSql;
  int rc = SQLITE_OK;
  Schema *pSchema = db->aDb[iDb].pSchema;

  assert( iDb>=0 && iDb<db->nDb );
  assert( db->aDb[iDb].pBt!=0 );


  assert( sqlite3SchemaMutexHeld(db, iDb, 0) );
  for(i=sqliteHashFirst(&pSchema->tblHash); i; i=sqliteHashNext(i)){
    Table *pTab = sqliteHashData(i);
    pTab->tabFlags &= ~TF_HasStat1;
  }
  for(i=sqliteHashFirst(&pSchema->idxHash); i; i=sqliteHashNext(i)){
    Index *pIdx = sqliteHashData(i);
    pIdx->hasStat1 = 0;




  }


  sInfo.db = db;
  sInfo.zDatabase = db->aDb[iDb].zDbSName;
  if( sqlite3FindTable(db, "sqlite_stat1", sInfo.zDatabase)!=0 ){
    zSql = sqlite3MPrintf(db,
        "SELECT tbl,idx,stat FROM %Q.sqlite_stat1", sInfo.zDatabase);
    if( zSql==0 ){
      rc = SQLITE_NOMEM_BKPT;
    }else{
      rc = sqlite3_exec(db, zSql, analysisLoader, &sInfo, 0);
      sqlite3DbFree(db, zSql);
    }
  }


  assert( sqlite3SchemaMutexHeld(db, iDb, 0) );
  for(i=sqliteHashFirst(&pSchema->idxHash); i; i=sqliteHashNext(i)){
    Index *pIdx = sqliteHashData(i);
    if( !pIdx->hasStat1 ) sqlite3DefaultRowEst(pIdx);
  }
  if( rc==SQLITE_NOMEM ){
    sqlite3OomFault(db);
  }
  return rc;
}
