
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iInst; } ;
typedef TYPE_1__ vtablog_vtab ;
typedef int sqlite3_vtab ;


 int SQLITE_OK ;
 int printf (char*,int) ;
 int sqlite3_free (int *) ;

__attribute__((used)) static int vtablogDestroy(sqlite3_vtab *pVtab){
  vtablog_vtab *pTab = (vtablog_vtab*)pVtab;
  printf("vtablogDestroy(%d)\n", pTab->iInst);
  sqlite3_free(pVtab);
  return SQLITE_OK;
}
