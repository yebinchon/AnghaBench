
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite3_vtab_cursor ;
typedef int sqlite3_vtab ;
struct TYPE_4__ {int * pVtab; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef TYPE_2__ BinfoCursor ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ sqlite3_malloc64 (int) ;

__attribute__((used)) static int binfoOpen(sqlite3_vtab *pVTab, sqlite3_vtab_cursor **ppCursor){
  BinfoCursor *pCsr;

  pCsr = (BinfoCursor *)sqlite3_malloc64(sizeof(BinfoCursor));
  if( pCsr==0 ){
    return SQLITE_NOMEM;
  }else{
    memset(pCsr, 0, sizeof(BinfoCursor));
    pCsr->base.pVtab = pVTab;
  }

  *ppCursor = (sqlite3_vtab_cursor *)pCsr;
  return SQLITE_OK;
}
