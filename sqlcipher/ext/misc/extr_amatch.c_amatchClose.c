
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_6__ {TYPE_1__* pVtab; } ;
typedef TYPE_2__ amatch_cursor ;
struct TYPE_5__ {int nCursor; } ;


 int SQLITE_OK ;
 int amatchClearCursor (TYPE_2__*) ;
 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static int amatchClose(sqlite3_vtab_cursor *cur){
  amatch_cursor *pCur = (amatch_cursor *)cur;
  amatchClearCursor(pCur);
  pCur->pVtab->nCursor--;
  sqlite3_free(pCur);
  return SQLITE_OK;
}
