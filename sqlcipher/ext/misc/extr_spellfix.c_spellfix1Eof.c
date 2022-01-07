
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
struct TYPE_2__ {scalar_t__ iRow; scalar_t__ nRow; } ;
typedef TYPE_1__ spellfix1_cursor ;



__attribute__((used)) static int spellfix1Eof(sqlite3_vtab_cursor *cur){
  spellfix1_cursor *pCur = (spellfix1_cursor *)cur;
  return pCur->iRow>=pCur->nRow;
}
