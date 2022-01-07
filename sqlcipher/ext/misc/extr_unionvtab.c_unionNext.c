
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab_cursor ;
typedef int UnionCsr ;


 int SQLITE_ROW ;
 int doUnionNext (int *) ;

__attribute__((used)) static int unionNext(sqlite3_vtab_cursor *cur){
  int rc;
  do {
    rc = doUnionNext((UnionCsr*)cur);
  }while( rc==SQLITE_ROW );
  return rc;
}
