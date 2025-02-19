
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_5__ {struct TYPE_5__* zPattern; } ;
typedef TYPE_1__ spellfix1_cursor ;


 int SQLITE_OK ;
 int spellfix1ResetCursor (TYPE_1__*) ;
 int spellfix1ResizeCursor (TYPE_1__*,int ) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static int spellfix1Close(sqlite3_vtab_cursor *cur){
  spellfix1_cursor *pCur = (spellfix1_cursor *)cur;
  spellfix1ResetCursor(pCur);
  spellfix1ResizeCursor(pCur, 0);
  sqlite3_free(pCur->zPattern);
  sqlite3_free(pCur);
  return SQLITE_OK;
}
