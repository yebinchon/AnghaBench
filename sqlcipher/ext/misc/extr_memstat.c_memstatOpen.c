
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;
struct TYPE_5__ {int db; } ;
typedef TYPE_1__ memstat_vtab ;
struct TYPE_6__ {int base; int db; } ;
typedef TYPE_2__ memstat_cursor ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_2__* sqlite3_malloc (int) ;

__attribute__((used)) static int memstatOpen(sqlite3_vtab *p, sqlite3_vtab_cursor **ppCursor){
  memstat_cursor *pCur;
  pCur = sqlite3_malloc( sizeof(*pCur) );
  if( pCur==0 ) return SQLITE_NOMEM;
  memset(pCur, 0, sizeof(*pCur));
  pCur->db = ((memstat_vtab*)p)->db;
  *ppCursor = &pCur->base;
  return SQLITE_OK;
}
