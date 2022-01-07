
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Btree ;


 int btreeCreateTable (int *,int*,int) ;
 int sqlite3BtreeEnter (int *) ;
 int sqlite3BtreeLeave (int *) ;

int sqlite3BtreeCreateTable(Btree *p, int *piTable, int flags){
  int rc;
  sqlite3BtreeEnter(p);
  rc = btreeCreateTable(p, piTable, flags);
  sqlite3BtreeLeave(p);
  return rc;
}
