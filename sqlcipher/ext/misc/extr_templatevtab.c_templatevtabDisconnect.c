
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int templatevtab_vtab ;
typedef int sqlite3_vtab ;


 int SQLITE_OK ;
 int sqlite3_free (int *) ;

__attribute__((used)) static int templatevtabDisconnect(sqlite3_vtab *pVtab){
  templatevtab_vtab *p = (templatevtab_vtab*)pVtab;
  sqlite3_free(p);
  return SQLITE_OK;
}
