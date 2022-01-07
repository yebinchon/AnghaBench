
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int iInst; int nCursor; } ;
typedef TYPE_1__ vtablog_vtab ;
struct TYPE_6__ {int iCursor; int base; } ;
typedef TYPE_2__ vtablog_cursor ;
typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memset (TYPE_2__*,int ,int) ;
 int printf (char*,int,int) ;
 TYPE_2__* sqlite3_malloc (int) ;

__attribute__((used)) static int vtablogOpen(sqlite3_vtab *p, sqlite3_vtab_cursor **ppCursor){
  vtablog_vtab *pTab = (vtablog_vtab*)p;
  vtablog_cursor *pCur;
  printf("vtablogOpen(tab=%d, cursor=%d)\n", pTab->iInst, ++pTab->nCursor);
  pCur = sqlite3_malloc( sizeof(*pCur) );
  if( pCur==0 ) return SQLITE_NOMEM;
  memset(pCur, 0, sizeof(*pCur));
  pCur->iCursor = pTab->nCursor;
  *ppCursor = &pCur->base;
  return SQLITE_OK;
}
