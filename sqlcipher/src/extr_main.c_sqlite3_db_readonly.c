
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef int Btree ;


 int SQLITE_MISUSE_BKPT ;
 int sqlite3BtreeIsReadonly (int *) ;
 int * sqlite3DbNameToBtree (int *,char const*) ;
 int sqlite3SafetyCheckOk (int *) ;

int sqlite3_db_readonly(sqlite3 *db, const char *zDbName){
  Btree *pBt;






  pBt = sqlite3DbNameToBtree(db, zDbName);
  return pBt ? sqlite3BtreeIsReadonly(pBt) : -1;
}
