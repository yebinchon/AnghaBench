
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Btree ;


 int SQLITE_OK ;
 int sqlite3BtreeCommitPhaseOne (int *,int ) ;
 int sqlite3BtreeCommitPhaseTwo (int *,int ) ;
 int sqlite3BtreeEnter (int *) ;
 int sqlite3BtreeLeave (int *) ;

int sqlite3BtreeCommit(Btree *p){
  int rc;
  sqlite3BtreeEnter(p);
  rc = sqlite3BtreeCommitPhaseOne(p, 0);
  if( rc==SQLITE_OK ){
    rc = sqlite3BtreeCommitPhaseTwo(p, 0);
  }
  sqlite3BtreeLeave(p);
  return rc;
}
