
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int i64 ;
struct TYPE_3__ {int pStorage; } ;
typedef TYPE_1__ Fts5FullTable ;


 int SQLITE_OK ;
 int sqlite3Fts5StorageContentInsert (int ,int **,int *) ;
 int sqlite3Fts5StorageIndexInsert (int ,int **,int ) ;

__attribute__((used)) static void fts5StorageInsert(
  int *pRc,
  Fts5FullTable *pTab,
  sqlite3_value **apVal,
  i64 *piRowid
){
  int rc = *pRc;
  if( rc==SQLITE_OK ){
    rc = sqlite3Fts5StorageContentInsert(pTab->pStorage, apVal, piRowid);
  }
  if( rc==SQLITE_OK ){
    rc = sqlite3Fts5StorageIndexInsert(pTab->pStorage, apVal, *piRowid);
  }
  *pRc = rc;
}
