
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_6__ {TYPE_1__* pVtab; struct TYPE_6__* zBuf; } ;
typedef TYPE_2__ fuzzer_cursor ;
struct TYPE_5__ {int nCursor; } ;


 int SQLITE_OK ;
 int fuzzerClearCursor (TYPE_2__*,int ) ;
 int sqlite3_free (TYPE_2__*) ;

__attribute__((used)) static int fuzzerClose(sqlite3_vtab_cursor *cur){
  fuzzer_cursor *pCur = (fuzzer_cursor *)cur;
  fuzzerClearCursor(pCur, 0);
  sqlite3_free(pCur->zBuf);
  pCur->pVtab->nCursor--;
  sqlite3_free(pCur);
  return SQLITE_OK;
}
