
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;
typedef int fulltext_vtab ;


 int SQLITE_OK ;
 int fulltext_vtab_destroy (int *) ;

__attribute__((used)) static int fulltextDisconnect(sqlite3_vtab *pVTab){
  fulltext_vtab_destroy((fulltext_vtab *)pVTab);
  return SQLITE_OK;
}
