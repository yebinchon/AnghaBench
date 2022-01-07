
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;


 int SQLITE_OK ;
 int assert (int *) ;

__attribute__((used)) static int echoRollbackTo(sqlite3_vtab *pVTab, int iSavepoint){
  assert( pVTab );
  return SQLITE_OK;
}
