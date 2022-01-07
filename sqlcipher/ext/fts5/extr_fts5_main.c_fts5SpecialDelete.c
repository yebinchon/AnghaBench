
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_int64 ;
struct TYPE_3__ {int pStorage; } ;
typedef TYPE_1__ Fts5FullTable ;


 int SQLITE_INTEGER ;
 int SQLITE_OK ;
 int sqlite3Fts5StorageDelete (int ,int ,int **) ;
 int sqlite3_value_int64 (int *) ;
 int sqlite3_value_type (int *) ;

__attribute__((used)) static int fts5SpecialDelete(
  Fts5FullTable *pTab,
  sqlite3_value **apVal
){
  int rc = SQLITE_OK;
  int eType1 = sqlite3_value_type(apVal[1]);
  if( eType1==SQLITE_INTEGER ){
    sqlite3_int64 iDel = sqlite3_value_int64(apVal[1]);
    rc = sqlite3Fts5StorageDelete(pTab->pStorage, iDel, &apVal[2]);
  }
  return rc;
}
