
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;
typedef int Btree ;


 int SQLITE_ERROR ;
 int SQLITE_OK ;
 scalar_t__ sqlite3BtreeIsInReadTrans (int *) ;
 int sqlite3ErrorWithMsg (int *,int,char*) ;

__attribute__((used)) static int checkReadTransaction(sqlite3 *db, Btree *p){
  if( sqlite3BtreeIsInReadTrans(p) ){
    sqlite3ErrorWithMsg(db, SQLITE_ERROR, "destination database is in use");
    return SQLITE_ERROR;
  }
  return SQLITE_OK;
}
