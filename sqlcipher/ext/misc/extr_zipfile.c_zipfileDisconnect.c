
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;
typedef int ZipfileTab ;


 int SQLITE_OK ;
 int sqlite3_free (int *) ;
 int zipfileCleanupTransaction (int *) ;

__attribute__((used)) static int zipfileDisconnect(sqlite3_vtab *pVtab){
  zipfileCleanupTransaction((ZipfileTab*)pVtab);
  sqlite3_free(pVtab);
  return SQLITE_OK;
}
