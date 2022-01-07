
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; } ;
typedef TYPE_1__ tclvar_cursor ;
typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;


 int SQLITE_OK ;
 TYPE_1__* sqlite3MallocZero (int) ;

__attribute__((used)) static int tclvarOpen(sqlite3_vtab *pVTab, sqlite3_vtab_cursor **ppCursor){
  tclvar_cursor *pCur;
  pCur = sqlite3MallocZero(sizeof(tclvar_cursor));
  *ppCursor = &pCur->base;
  return SQLITE_OK;
}
