
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct KeyInfo {int dummy; } ;
typedef int Btree ;
typedef int BtCursor ;


 int SQLITE_CORRUPT_BKPT ;
 int btreeCursor (int *,int,int,struct KeyInfo*,int *) ;
 int sqlite3BtreeEnter (int *) ;
 int sqlite3BtreeLeave (int *) ;

int sqlite3BtreeCursor(
  Btree *p,
  int iTable,
  int wrFlag,
  struct KeyInfo *pKeyInfo,
  BtCursor *pCur
){
  int rc;
  if( iTable<1 ){
    rc = SQLITE_CORRUPT_BKPT;
  }else{
    sqlite3BtreeEnter(p);
    rc = btreeCursor(p, iTable, wrFlag, pKeyInfo, pCur);
    sqlite3BtreeLeave(p);
  }
  return rc;
}
