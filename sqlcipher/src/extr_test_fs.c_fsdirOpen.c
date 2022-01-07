
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;
struct TYPE_3__ {int base; } ;
typedef TYPE_1__ FsdirCsr ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ sqlite3_malloc (int) ;

__attribute__((used)) static int fsdirOpen(sqlite3_vtab *pVTab, sqlite3_vtab_cursor **ppCursor){
  FsdirCsr *pCur;



  pCur = (FsdirCsr*)sqlite3_malloc(sizeof(FsdirCsr)+256);
  if( pCur==0 ) return SQLITE_NOMEM;
  memset(pCur, 0, sizeof(FsdirCsr));
  *ppCursor = &pCur->base;
  return SQLITE_OK;
}
