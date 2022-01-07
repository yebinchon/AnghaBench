
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef int Btree ;


 int SQLITE_MISUSE_BKPT ;
 char const* sqlite3BtreeGetFilename (int *) ;
 int * sqlite3DbNameToBtree (int *,char const*) ;
 int sqlite3SafetyCheckOk (int *) ;

const char *sqlite3_db_filename(sqlite3 *db, const char *zDbName){
  Btree *pBt;






  pBt = sqlite3DbNameToBtree(db, zDbName);
  return pBt ? sqlite3BtreeGetFilename(pBt) : 0;
}
