
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;
typedef int spellfix1_vtab ;
struct TYPE_4__ {int base; int * pVTab; } ;
typedef TYPE_1__ spellfix1_cursor ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* sqlite3_malloc64 (int) ;

__attribute__((used)) static int spellfix1Open(sqlite3_vtab *pVTab, sqlite3_vtab_cursor **ppCursor){
  spellfix1_vtab *p = (spellfix1_vtab*)pVTab;
  spellfix1_cursor *pCur;
  pCur = sqlite3_malloc64( sizeof(*pCur) );
  if( pCur==0 ) return SQLITE_NOMEM;
  memset(pCur, 0, sizeof(*pCur));
  pCur->pVTab = p;
  *ppCursor = &pCur->base;
  return SQLITE_OK;
}
