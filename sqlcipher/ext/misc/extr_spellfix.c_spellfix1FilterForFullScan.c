
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_value ;
struct TYPE_5__ {int db; int zTableName; int zDbName; } ;
typedef TYPE_1__ spellfix1_vtab ;
struct TYPE_6__ {int idxNum; int nRow; int iRow; int pFullScan; TYPE_1__* pVTab; } ;
typedef TYPE_2__ spellfix1_cursor ;


 int SQLITE_DONE ;
 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int SQLITE_ROW ;
 int assert (int) ;
 int spellfix1ResetCursor (TYPE_2__*) ;
 int sqlite3_bind_value (int ,int,int *) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int ,int ,char*) ;
 int sqlite3_prepare_v2 (int ,char*,int,int *,int ) ;
 int sqlite3_step (int ) ;

__attribute__((used)) static int spellfix1FilterForFullScan(
  spellfix1_cursor *pCur,
  int argc,
  sqlite3_value **argv
){
  int rc = SQLITE_OK;
  int idxNum = pCur->idxNum;
  char *zSql;
  spellfix1_vtab *pVTab = pCur->pVTab;
  spellfix1ResetCursor(pCur);
  assert( idxNum==0 || idxNum==64 );
  zSql = sqlite3_mprintf(
     "SELECT word, rank, NULL, langid, id FROM \"%w\".\"%w_vocab\"%s",
     pVTab->zDbName, pVTab->zTableName,
     ((idxNum & 64) ? " WHERE rowid=?" : "")
  );
  if( zSql==0 ) return SQLITE_NOMEM;
  rc = sqlite3_prepare_v2(pVTab->db, zSql, -1, &pCur->pFullScan, 0);
  sqlite3_free(zSql);
  if( rc==SQLITE_OK && (idxNum & 64) ){
    assert( argc==1 );
    rc = sqlite3_bind_value(pCur->pFullScan, 1, argv[0]);
  }
  pCur->nRow = pCur->iRow = 0;
  if( rc==SQLITE_OK ){
    rc = sqlite3_step(pCur->pFullScan);
    if( rc==SQLITE_ROW ){ pCur->iRow = -1; rc = SQLITE_OK; }
    if( rc==SQLITE_DONE ){ rc = SQLITE_OK; }
  }else{
    pCur->iRow = 0;
  }
  return rc;
}
