
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;


 int zipfileCommit (int *) ;

__attribute__((used)) static int zipfileRollback(sqlite3_vtab *pVtab){
  return zipfileCommit(pVtab);
}
