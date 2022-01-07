
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_vtab ;
typedef int CidxTable ;


 int SQLITE_OK ;
 int sqlite3_free (int *) ;

__attribute__((used)) static int cidxDisconnect(sqlite3_vtab *pVtab){
  CidxTable *pTab = (CidxTable*)pVtab;
  sqlite3_free(pTab);
  return SQLITE_OK;
}
